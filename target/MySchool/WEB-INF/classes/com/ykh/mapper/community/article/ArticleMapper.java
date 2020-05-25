package com.ykh.mapper.community.article;

import com.ykh.DTO.ArticleDetail;
import com.ykh.DTO.ArticleList;
import com.ykh.pojo.community.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleMapper {
    List<ArticleList> findAllArt(@Param("school") String school);
    List<ArticleList> findArtByType(@Param("school") String school,@Param("type") String type);
    ArticleDetail findArtDeById(@Param("id") Integer id);
    List<ArticleList> findArtByAuthor(@Param("school")String school,@Param("author") String author);
    int addArticle(Article article);
}
