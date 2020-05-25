package com.ykh.pojo.community;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.io.Serializable;

@Component
public class Author implements Serializable {
    private String name;
    private String icon;
    private String identity;

    public Author(){}
    public Author(String name, String icon, String identity) {
        this.name = name;
        this.icon = icon;
        this.identity = identity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }
}
