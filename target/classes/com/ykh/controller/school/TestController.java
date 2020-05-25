package com.ykh.controller.school;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

//主要用来测试前端交互时可能出现的问题
@Controller
public class TestController {
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String test(HttpServletRequest request, Model model){
        model.addAttribute("name","杨坤宏");
        return "test.html";
    }
}
