package com.ykh.mapper.school;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SchoolMapper {
    int insertSchool(@Param("name")String name,@Param("id") Integer id);
    int findIdByName(@Param("name") String name);
}
