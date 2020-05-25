package com.ykh.DTO;

public class ReplyRegistMessage {
    public static final Integer user_exsit=0;
    public static final Integer regist_success=1;
    public Integer code;
    public String message;
    public ReplyRegistMessage(Integer code,String message){
        this.code=code;
        this.message=message;
    }
}
