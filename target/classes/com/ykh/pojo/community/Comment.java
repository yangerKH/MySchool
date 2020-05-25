package com.ykh.pojo.community;

import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class Comment {
    private Integer id;
    private Integer articleId;
    private Integer parentId;
    private String commentor;
    private Date createTime;
    private String content;
    private Integer likeCount;
    private Integer unLikeCount;
    public Comment(){}

    public Comment(Integer id, Integer articleId, Integer parentId, String commentor, Date createTime, String content, Integer likeCount, Integer unLikeCount) {
        this.id = id;
        this.articleId = articleId;
        this.parentId = parentId;
        this.commentor = commentor;
        this.createTime = createTime;
        this.content = content;
        this.likeCount = likeCount;
        this.unLikeCount = unLikeCount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getCommentor() {
        return commentor;
    }

    public void setCommentor(String commentor) {
        this.commentor = commentor;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }

    public Integer getUnLikeCount() {
        return unLikeCount;
    }

    public void setUnLikeCount(Integer unLikeCount) {
        this.unLikeCount = unLikeCount;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", articleId=" + articleId +
                ", parentId=" + parentId +
                ", commentor='" + commentor + '\'' +
                ", createTime=" + createTime +
                ", content='" + content + '\'' +
                ", likeCount=" + likeCount +
                ", unLikeCount=" + unLikeCount +
                '}';
    }
}
