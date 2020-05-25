package com.ykh.mapper.realm;

import com.ykh.pojo.realm.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RealmMapper {
    List<String> findRoleByName(String name);
    List<String> findPermByName(String name);
    User findUserByName(String name);
    Integer insertUser(@Param("name") String name, @Param("pass") String pass);
}
