package com.ykh.DTO;

import java.util.Date;

public class ArticleDetail {
    private Integer id;
    private String title;
    private Date createTime;
    private Integer commentCount=0;
    private String icon;
    private Integer likeCount;
    private Integer unlikeCount;
    private String type;
    private String author;
    private String content;
    private Integer ReadCount;
    public Integer getReadCount() {
        return ReadCount;
    }

    public void setReadCount(Integer readCount) {
        ReadCount = readCount;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Integer getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }

    public Integer getUnlikeCount() {
        return unlikeCount;
    }

    public void setUnlikeCount(Integer unlikeCount) {
        this.unlikeCount = unlikeCount;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    public ArticleDetail(){}

    public ArticleDetail(Integer id, String title, Date createTime, Integer commentCount, String icon, Integer likeCount, Integer unlikeCount, String type, String author, String content) {
        this.id = id;
        this.title = title;
        this.createTime = createTime;
        this.commentCount = commentCount;
        this.icon = icon;
        this.likeCount = likeCount;
        this.unlikeCount = unlikeCount;
        this.type = type;
        this.author = author;
        this.content = content;
    }
}
