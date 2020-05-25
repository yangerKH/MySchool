package com.ykh.pojo.realm;

import java.io.Serializable;
import java.util.List;

public class Role implements Serializable {
    private Integer id;
    private String name;
    private List<String> roleprem;

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

    public List<String> getRoleprem() {
        return roleprem;
    }

    public void setRoleprem(List<String> roleprem) {
        this.roleprem = roleprem;
    }
}
