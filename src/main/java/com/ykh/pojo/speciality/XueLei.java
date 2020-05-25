package com.ykh.pojo.speciality;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class XueLei implements Serializable {
    private Integer id;
    private String name;
    public XueLei(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
    public XueLei(){}

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

    @Override
    public String toString() {
        return "XueLei{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
