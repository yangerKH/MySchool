package com.ykh.controller.chatServer;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ykh.pojo.websocket.Messages;
import com.ykh.service.webSocket.MessagesService;
import org.springframework.web.context.ContextLoader;

import javax.servlet.http.HttpSession;
import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * websocket服务
 */
@ServerEndpoint(value = "/chatServer", configurator = HttpSessionConfigurator.class)
public class ChatServer {
    public ChatServer(){
    }
    private static int onlineCount = 0; //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static CopyOnWriteArraySet<ChatServer> webSocketSet = new CopyOnWriteArraySet<ChatServer>();
    private Session session;    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private String username;      //用户名
    private HttpSession httpSession;    //request的session

    private static List list = new ArrayList<>();   //在线列表,记录用户名称
    private static Map routetab = new HashMap<>();  //用户名和websocket的session绑定的路由表

    private MessagesService messagesService= ContextLoader.getCurrentWebApplicationContext().getBean(MessagesService.class);
    /**
     * 连接建立成功调用的方法
     * @param session  可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session, EndpointConfig config){
        this.session = session;
        webSocketSet.add(this);     //加入set中
        this.httpSession = (HttpSession) config.getUserProperties().get(HttpSession.class.getName());
        this.username=(String) httpSession.getAttribute("username");    //获取当前用户
        System.out.println("username");
        if(!routetab.containsKey(username)) {
            routetab.put(username, session);   //将用户名和session绑定到路由表
        }
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(){
        //System.out.println(username+"关闭连接");
        webSocketSet.remove(this);  //从set中删除
        routetab.remove(username);
        String message = getMessage("[" + username +"]离开了聊天室,当前在线人数为"+getOnlineCount()+"位", "notice", list);
        broadcast(message);         //广播
    }

    /**
     * 接收客户端的message,判断是否有接收人而选择进行广播还是指定发送
     * "massage" : {
     * "from" : "xxx",
     * "to" : "xxx",
     * "content" : "xxx",
     * "time" : "xxxx.xx.xx"
     *  },
     * "type" : {notice|message|image},
     * "list" : {[xx],[xx],[xx]}
     * @param _message 客户端发送过来的消息
     */
    @OnMessage
    public void onMessage(String _message) {
        JSONObject chat = JSON.parseObject(_message);
        if(chat.get("toUser") == null || chat.get("toUser").equals("")){      //如果to为空,则广播;如果不为空,则对指定的用户发送消息
            broadcast(_message);
        }else{
            //String [] userlist = message.get("to").toString().split(",");
            singleSend(_message, (Session) routetab.get(chat.get("fromUser")));      //发送给自己,这个别忘了
            String toUser = (String)chat.get("toUser");
            if(routetab.get(toUser)==null){
                //不在线上
                System.out.println("不在线上");
            }else {
                singleSend(_message, (Session) routetab.get(chat.get("toUser")));     //私聊，发送给指定的用户
            }
            //将聊天信息保存到数据库
            messagesService.insertMessages(JSONObject.parseObject(_message,Messages.class));
        }
    }

    /**
     * 发生错误时调用
     * @param error
     */
    @OnError
    public void onError(Throwable error){
        error.printStackTrace();
    }

    /**
     * 广播消息
     * @param message
     */
    public void broadcast(String message){
        for(ChatServer chat: webSocketSet){
            try {
                chat.session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
                continue;
            }
        }
    }

    /**
     * 对特定用户发送消息
     * @param message
     * @param session
     */
    public void singleSend(String message, Session session){
        try {
            session.getBasicRemote().sendText(message);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 组装返回给前台的消息
     * @param message   交互信息
     * @param type      信息类型
     * @param list      在线列表
     * @return
     */
    public String getMessage(String message, String type, List list){
        JSONObject member = new JSONObject();
        member.put("message", message);
        member.put("type", type);
        member.put("list", list);
        return member.toString();
    }

    public  int getOnlineCount() {
        return onlineCount;
    }

    public  void addOnlineCount() {
        ChatServer.onlineCount++;
    }

    public  void subOnlineCount() {
        ChatServer.onlineCount--;
    }
}
