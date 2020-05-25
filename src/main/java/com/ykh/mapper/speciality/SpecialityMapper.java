package com.ykh.mapper.speciality;

import com.ykh.pojo.speciality.XiLei;
import com.ykh.pojo.speciality.XueLei;
import com.ykh.pojo.speciality.ZhuanYe;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SpecialityMapper {
    List<XueLei> findAllXueLei();
    List<XiLei> findAllXiLeiById(@Param("xlid") Integer xlid);
    List<ZhuanYe> findAllZhuanYeById(@Param("xlid") Integer xlid);
    ZhuanYe findZhuanYeByName(@Param("name") String name);
}
