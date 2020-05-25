package com.ykh.controller.school;

import com.ykh.pojo.websocket.Messages;
import com.ykh.service.webSocket.MessagesService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ChatController {
    @Autowired
    MessagesService messagesService;
    @RequestMapping("/chat/{toName}")
    public String chatWithOne(@PathVariable("toName") String toName, Model model){
        String userName = (String)SecurityUtils.getSubject().getPrincipal();
        model.addAttribute("currentUser",userName);
        model.addAttribute("toUser",toName);
        return "/school/chat";
    }
    @RequestMapping(value = "/getMsgList",method = RequestMethod.POST)
    @ResponseBody
    public List<Messages> MessagesList(@RequestParam("fromUser") String fromUser, @RequestParam("toUser") String toUser){
        List<Messages> messagesList = messagesService.getMessagesList(fromUser, toUser, 1);
        return messagesList;
    }
}
