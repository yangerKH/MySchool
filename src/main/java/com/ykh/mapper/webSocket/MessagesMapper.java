package com.ykh.mapper.webSocket;

import com.ykh.pojo.websocket.Messages;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessagesMapper {
    int insertMessages(Messages messages);

    List<Messages> getMessagesList(@Param("fromUser") String fromUser, @Param("toUser") String toUser);

    List<Messages> getAllMessages();
}
