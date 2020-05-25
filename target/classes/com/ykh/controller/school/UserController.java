package com.ykh.controller.school;

import com.ykh.DTO.ReplyLoginMessage;
import com.ykh.DTO.ReplyRegistMessage;
import com.ykh.service.userService.RealmService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    private RealmService realmService;
    @RequestMapping(value = "/login",method= RequestMethod.POST)
    @ResponseBody
    public ReplyLoginMessage login(@RequestParam(value = "username",required = false) String username,
                                   @RequestParam(value = "password",required = false) String password,
                                   HttpServletResponse response, HttpSession session, Model model) throws IOException {
        if (username != null && password != null) {
            Subject subject = SecurityUtils.getSubject();
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, password);
            try {
                subject.login(usernamePasswordToken);
                model.addAttribute("username",username);
                session.setAttribute("username",username);
                //response.sendRedirect("/chat.jsp");
               return new ReplyLoginMessage(true);
            } catch (UnknownAccountException e) {
                return new ReplyLoginMessage(false,ReplyLoginMessage.USER_NAME_NOT_EXIST);
            }catch (IncorrectCredentialsException e){
                return new ReplyLoginMessage(false,ReplyLoginMessage.USER_PASSWORD_WRONG);
            }
        }else {
            System.out.println("请输入用户和密码");
            return new ReplyLoginMessage(false,ReplyLoginMessage.USER_NAME_OR_PASSWORD_NULL);
        }
    }
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "school/login";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    @ResponseBody
    public ReplyRegistMessage regist(@RequestParam(value = "username",required = false) String username,
                                     @RequestParam(value = "password",required = false) String password) throws IOException {
        return realmService.regist(username,password);
    }

//    @RequestMapping(value ="/regist",method = RequestMethod.GET)
//    public String regist(@RequestParam(value = "username")String username,
//                         @RequestParam(value = "password")String password){
//        System.out.println(username+password+"注册");
//        return "login";
//    }
    @RequestMapping("/logout")
    public String logout(){
        SecurityUtils.getSubject().logout();
        return "../index";
    }
}
