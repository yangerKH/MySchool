package com.ykh.mapper.community.comment;

import com.ykh.pojo.community.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentMapper {
    List<Comment> findCommentTop(@Param("articleId") Integer article);
    Integer commentCountById(@Param("parentId") Integer parentId);
    Integer insertComment(Comment comment);
    List<Comment> findCommentByParentId(@Param("parentId") Integer parentId);
    Comment findCommentById(@Param("id") Integer id);
    Integer deletById(@Param("id")Integer id);
}
