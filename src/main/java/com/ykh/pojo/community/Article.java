package com.ykh.pojo.community;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component
public class Article implements Serializable {
    private Integer id;
    private String title;
    private String content;
    private String author;
    private Date createTime;
    private String type;
    private Integer likeCount;
    private Integer unlikeCount;
    private Integer readCount;
    private Integer jubaoCount;
    private String school;

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public Integer getReadCount() {
        return readCount;
    }

    public void setReadCount(Integer readCount) {
        this.readCount = readCount;
    }

    public Integer getJubaoCount() {
        return jubaoCount;
    }

    public void setJubaoCount(Integer jubaoCount) {
        this.jubaoCount = jubaoCount;
    }
    public Article(){}
    public Article(Integer id, String title, String content, String author, Date createTime, String type, Integer likeCount, Integer unlikeCount, Integer readCount, Integer jubaoCount) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.author = author;
        this.createTime = createTime;
        this.type = type;
        this.likeCount = likeCount;
        this.unlikeCount = unlikeCount;
        this.readCount = readCount;
        this.jubaoCount = jubaoCount;
    }
}
