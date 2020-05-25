package com.ykh.pojo.speciality;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class XiLei implements Serializable {
    private Integer id;
    private String name;
    private Integer xueleiId;

    public XiLei(Integer id, String name, Integer xueleiId) {
        this.id = id;
        this.name = name;
        this.xueleiId = xueleiId;
    }
    public XiLei(){}

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

    public Integer getXueleiId() {
        return xueleiId;
    }

    public void setXueleiId(Integer xueleiId) {
        this.xueleiId = xueleiId;
    }

    @Override
    public String toString() {
        return "XiLei{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xueleiId=" + xueleiId +
                '}';
    }
}
