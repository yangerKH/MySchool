package com.ykh.controller.community;

import com.ykh.DTO.ArticleDetail;
import com.ykh.DTO.ArticleList;
import com.ykh.DTO.CommentDTO;
import com.ykh.pojo.community.Article;
import com.ykh.service.communityService.ArticleService;
import com.ykh.service.communityService.CommentService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class ArticleCnotroller {
    @Autowired
    ArticleService articleService;
    @Autowired
    CommentService commentService;
    private String  getCurrentUser(){
        Object principal = SecurityUtils.getSubject().getPrincipal();
        return principal==null?null:principal.toString();
    }
    @RequestMapping("/community/index")
    public String GotoIndex(){
        return "forward:/artList/all";
    }
    @RequestMapping("/artList/{type}")
    public String getArtList(@PathVariable(required = false,name = "type")String type,
                             HttpServletRequest request, Model model){
        String school = (String) request.getSession().getAttribute("school");
        List<ArticleList> artLists = articleService.getArtList(type, school);
        model.addAttribute("arts",artLists);
        model.addAttribute("user",getCurrentUser());
        model.addAttribute("selected",type);
        model.addAttribute("school",school);
        return "community/cate";
    }
    @RequestMapping("/t/{id}")
    public String getArtDetail(@PathVariable("id") Integer id,Model model){
        ArticleDetail artDeById = articleService.getArtDeById(id);
        model.addAttribute("art",artDeById);
        model.addAttribute("user",getCurrentUser());
        //文章的一级评论
        List<CommentDTO> topComment = commentService.getTopComment(id);
        model.addAttribute("comment",topComment);
        return "community/detail";
    }
    @RequestMapping("/commnity")
    public String getIndex(HttpServletRequest request){
        String school = request.getParameter("school");
        HttpSession session = request.getSession();
        session.setAttribute("school",school);
        return "forward:/artList/all";
    }
    @RequestMapping("/publish")
    public String publish(HttpServletRequest request,Model model){
        if(SecurityUtils.getSubject().getPrincipal()==null) return "/school/login";
        String title = request.getParameter("title");
        String author = SecurityUtils.getSubject().getPrincipal().toString();
        String content = request.getParameter("content");
        String type = request.getParameter("tab");
        Article article = new Article();
        article.setTitle(title);
        article.setContent(content);
        article.setAuthor(author);
        article.setType(type);
        article.setCreateTime(new Date());
        article.setSchool(request.getSession().getAttribute("school").toString());
        int publishFlag = articleService.publish(article);
        if(publishFlag==1) return "forward:community/index";
        return "community/new";
    }
    @RequestMapping("/new")
    public String newArt(){
        //数据的回显也在这里做
        return "community/new";
    }


}
