package com.ykh.pojo.speciality;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class ZhuanYe implements Serializable {
    private Integer id;
    private String name;
    private Integer xilei;
    private String code;
    private String introduce;
    private String goal;
    private String course;
    public ZhuanYe(){}

    public ZhuanYe(Integer id, String name, Integer xilei, String code,String introduce,String goal,String course) {
        this.id = id;
        this.name = name;
        this.xilei = xilei;
        this.code = code;
        this.introduce=introduce;
        this.goal=goal;
        this.course=course;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getXilei() {
        return xilei;
    }

    public void setXilei(Integer xilei) {
        this.xilei = xilei;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "ZhuanYe{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xilei=" + xilei +
                ", code='" + code + '\'' +
                '}';
    }
}
