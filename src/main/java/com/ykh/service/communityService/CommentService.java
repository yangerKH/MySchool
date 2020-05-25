package com.ykh.service.communityService;

import com.ykh.DTO.CommentDTO;
import com.ykh.mapper.community.author.AuthorMapper;
import com.ykh.mapper.community.comment.CommentMapper;
import com.ykh.mapper.user.UserMapper;
import com.ykh.pojo.community.Article;
import com.ykh.pojo.community.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Autowired
    AuthorMapper authorMapper;
    //评论文章
    public int comArt(Comment comment){
        return commentMapper.insertComment(comment);
    }
    //找到一级评论
    public List<CommentDTO> getTopComment(Integer articleId){
        List<Comment> comments = commentMapper.findCommentTop(articleId);
        return getComentDTO(comments,0);
    }
    //找到子级
    public List<CommentDTO> getSonCom(Integer commentId){
        List<Comment> coments = new ArrayList<>();
        getAllComByParent(commentId,coments);
        return getComentDTO(coments,commentId);
    }
    //递归找到该评论节点下的所有子节点
    private void getAllComByParent(Integer parentId,List<Comment> comments){
        List<Comment> allcommentByParentId = commentMapper.findCommentByParentId(parentId);
        for (Comment comment : allcommentByParentId) {
            comments.add(comment);
            getAllComByParent(comment.getId(),comments);
        }
    }
    private List<CommentDTO> getComentDTO(List<Comment> comments,Integer commentId){
        List<CommentDTO> result =new ArrayList<>();
        for (Comment comment : comments) {
            CommentDTO commentDTO = new CommentDTO();
            commentDTO.setId(comment.getId());
            commentDTO.setName(comment.getCommentor());
            commentDTO.setLikeCount(comment.getLikeCount());
            commentDTO.setContent(comment.getContent());
            commentDTO.setCreateTime(comment.getCreateTime());
            commentDTO.setIcon(authorMapper.getIconByName(comment.getCommentor()));
            Integer parentId = comment.getParentId();
            //子级评论，特殊处理
            if(parentId!=0){
               //第二级评论
                if(parentId.equals(commentId)){
                    commentDTO.setBeContent("");
                    commentDTO.setBeName("");
                }else{
                    //第三级评论
                    Comment commentById = commentMapper.findCommentById(parentId);
                    commentDTO.setContent(comment.getContent()+"//");
                    //评论被删除
                    if(commentById==null){
                        commentDTO.setBeContent("该评论已被删除");
                    }else{
                        commentDTO.setBeContent(commentById.getContent());
                        commentDTO.setBeName("@"+commentById.getCommentor());
                    }
                }
            }else{
                commentDTO.setCommentCount(commentMapper.commentCountById(comment.getId()));
            }
            result.add(commentDTO);
        }
        return result;
    }
    public Integer deleteCommentById(Integer id){
        return commentMapper.deletById(id);
    }
    //评论评论
    public Integer comCom(Integer id,String commentor,String content){
        Comment becomment = commentMapper.findCommentById(id);
        Comment comment =new Comment();
        comment.setContent(content);
        comment.setCreateTime(new Date());
        comment.setCommentor(commentor);
        comment.setArticleId(becomment.getArticleId());
        comment.setParentId(becomment.getId());
        return commentMapper.insertComment(comment);

    }
}
