package com.ykh.DTO;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component
public class CommentDTO implements Serializable {
    private Integer id;
    private String name;
    private String icon;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String content;
    private Date createTime;
    private Integer likeCount;
    private Integer commentCount;
    //被评论者的name
    private String beName;
    //被评论的内容
    private String beContent;

    public String getBeName() {
        return beName;
    }

    public void setBeName(String beName) {
        this.beName = beName;
    }

    public String getBeContent() {
        return beContent;
    }

    public void setBeContent(String beContent) {
        this.beContent = beContent;
    }

    @Override
    public String toString() {
        return "CommentDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", icon='" + icon + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", likeCount=" + likeCount +
                ", commentCount=" + commentCount +
                ", beName='" + beName + '\'' +
                ", beContent='" + beContent + '\'' +
                '}';
    }

    public CommentDTO(){}

    public CommentDTO(String name, String icon, String content, Date createTime, Integer likeCount, Integer commentCount) {
        this.name = name;
        this.icon = icon;
        this.content = content;
        this.createTime = createTime;
        this.likeCount = likeCount;
        this.commentCount = commentCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }
}
