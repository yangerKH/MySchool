package com.ykh.service.communityService;

import com.ykh.DTO.ArticleDetail;
import com.ykh.DTO.ArticleList;
import com.ykh.mapper.community.article.ArticleMapper;
import com.ykh.pojo.community.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArticleService {
    @Autowired
    ArticleMapper articleMapper;
    public List<ArticleList> getArtList(String type,String school){
        if ("all".equals(type)){
            return articleMapper.findAllArt(school);
        }
        String curType="学习";
        if("rend".equals(type)) curType="租房";
        else if("help".equals((type))) curType="求助";
        else if("work".equals(type)) curType="兼职";
        else if("team".equals(type)) curType="组团";
        else curType="学习";
        return articleMapper.findArtByType(school,curType);
    }
    public ArticleDetail getArtDeById(Integer id){
        return articleMapper.findArtDeById(id);
    }
    public List<ArticleList> getArtsByAuthor(String school,String author){
        return articleMapper.findArtByAuthor(school,author);
    }
    public int publish(Article article){
        return articleMapper.addArticle(article);
    }
}
