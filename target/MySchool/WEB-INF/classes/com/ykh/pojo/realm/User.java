package com.ykh.pojo.realm;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
    private String name;
    private String pass;
    private List<String> rolename;

    public User(){
        super();
    }
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public List<String> getRolename() {
        return rolename;
    }

    public void setRolename(List<String> rolename) {
        this.rolename = rolename;
    }
    public User(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", pass='" + pass + '\'' +
                ", rolename=" + rolename +
                '}';
    }
}
