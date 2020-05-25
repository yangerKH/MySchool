package com.ykh.constant;

public enum UserEnum {
    manger("管理员",0);
    private String msg;
    private int num;

    UserEnum(String msg, int num) {
        this.msg = msg;
        this.num = num;
    }
}
