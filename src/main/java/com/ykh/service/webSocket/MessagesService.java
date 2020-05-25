package com.ykh.service.webSocket;

import com.ykh.mapper.webSocket.MessagesMapper;
import com.ykh.pojo.websocket.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessagesService {
    @Autowired
    MessagesMapper messagesMapper;
    //读取未读信息的数量,暂时不做
//    public int getNoReadMessage(String fromUser,String toUser){
//        if(messagesList)
//    }

    //获得消息list
    public List<Messages> getMessagesList(String fromUser,String toUser,Integer type){
        return  messagesMapper.getMessagesList(fromUser,toUser);
    }

    //将信息保存到数据库
    public int insertMessages(Messages messages){
        return messagesMapper.insertMessages(messages);
    }
}
