package com.ykh.constant;

import javax.swing.*;

public enum SchoolType {
    nef(1,"985"),
    too(2,"211"),
    oneone(3,"双一流"),
    school(4,"其他类");
    private Integer id;
    private String type;
     SchoolType(Integer id,String type){
        this.id=id;
        this.type=type;
    }
}
