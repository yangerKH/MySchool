package com.ykh.mapper.community.author;

import com.ykh.pojo.community.Author;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthorMapper {
     Author getAuthorByName(@Param("name") String name);
     String getIconByName(@Param("name") String name);
}
