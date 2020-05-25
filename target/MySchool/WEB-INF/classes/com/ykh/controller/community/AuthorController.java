package com.ykh.controller.community;

import com.ykh.DTO.ArticleList;
import com.ykh.pojo.community.Author;
import com.ykh.service.communityService.ArticleService;
import com.ykh.service.communityService.AuthorService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AuthorController {
    @Autowired
    AuthorService authorService;
    @Autowired
    ArticleService articleService;
    private String  getCurrentUser(){
        Object principal = SecurityUtils.getSubject().getPrincipal();
        return principal==null?null:principal.toString();
    }
    @RequestMapping("/userInfo/{name}")
    public String getUserInfo(@PathVariable("name") String name, Model model, HttpServletRequest request){
        Author authorByName = authorService.getAuthorByName(name);
        String schoolName = (String) request.getSession().getAttribute("school");
        List<ArticleList> artsByAuthor = articleService.getArtsByAuthor(schoolName, name);
        model.addAttribute("arts",artsByAuthor);
        model.addAttribute("author",authorByName);
        model.addAttribute("user",getCurrentUser());
        return "/community/user_info";
    }
}
