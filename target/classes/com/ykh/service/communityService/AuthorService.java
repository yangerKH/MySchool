package com.ykh.service.communityService;

import com.ykh.mapper.community.author.AuthorMapper;
import com.ykh.pojo.community.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorService {
    @Autowired
    AuthorMapper authorMapper;
    public Author getAuthorByName(String name){
        return authorMapper.getAuthorByName(name);
    }
}
