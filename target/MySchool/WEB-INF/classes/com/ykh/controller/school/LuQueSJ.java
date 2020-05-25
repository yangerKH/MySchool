package com.ykh.controller.school;

import com.ykh.service.schoolService.luque.LuQueSJService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

//录取时间安排
@Controller
public class LuQueSJ {
    @Autowired
    LuQueSJService luQueSJService;
    @RequestMapping(value = "/lqsj",method = RequestMethod.GET)
    public String luQueSJ(HttpServletRequest request, Model model) throws IOException {
        Map<String, String> messages = luQueSJService.gethtml(request.getParameter("url"));
        model.addAttribute("title",messages.get("title"));
        model.addAttribute("content",messages.get("content"));
        return "/school/luqueCity";
    }
}
