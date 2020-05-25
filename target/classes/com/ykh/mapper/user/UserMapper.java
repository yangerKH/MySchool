package com.ykh.mapper.user;

import com.ykh.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    List<User> findAllUser();
    int addUser(User user);
}
