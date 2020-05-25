package com.ykh.controller.community;

import com.ykh.DTO.CommentDTO;
import com.ykh.pojo.community.Comment;
import com.ykh.service.communityService.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;
    @RequestMapping("comment/art")
    public String commentArt(HttpServletRequest request){
        Integer articleId = Integer.parseInt(request.getParameter("articleId"));
        String commentor = request.getParameter("commentor");
        String content = request.getParameter("content");
        Comment comment = new Comment();
        comment.setArticleId(articleId);
        comment.setCommentor(commentor);
        comment.setCreateTime(new Date());
        comment.setContent(content);
        commentService.comArt(comment);
        return "redirect:/t/"+articleId;
    }
    @RequestMapping(value = "/getComment/son",method = RequestMethod.POST)
    @ResponseBody
    public List<CommentDTO> commentCom(HttpServletRequest request, Model model){
        Integer commentId =Integer.parseInt(request.getParameter("id"));
        List<CommentDTO> sonCom = commentService.getSonCom(commentId);
        return sonCom;
    }
    @RequestMapping(value = "/deleteCom",method = RequestMethod.POST)
    @ResponseBody
    public Integer deleteCom(HttpServletRequest request){
        Integer id = Integer.parseInt(request.getParameter("id"));
        return commentService.deleteCommentById(id);
    }
    @RequestMapping(value = "/comment/submit",method = RequestMethod.POST)
    @ResponseBody
    public Integer submitCom(HttpServletRequest request){
        Integer id = Integer.parseInt(request.getParameter("id"));
        String commentor = request.getParameter("commentor");
        String content = request.getParameter("content");
        return commentService.comCom(id,commentor,content);

    }
}
