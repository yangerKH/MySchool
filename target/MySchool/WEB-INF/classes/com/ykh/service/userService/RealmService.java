package com.ykh.service.userService;

import com.ykh.DTO.ReplyRegistMessage;
import com.ykh.mapper.realm.RealmMapper;
import com.ykh.pojo.realm.User;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

import static org.apache.logging.log4j.core.util.Loader.getClassLoader;

@Service
public class RealmService {
    @Autowired
    RealmMapper realmMapper;
    public User findUserByName(String name){
        return realmMapper.findUserByName(name);
    }
    public List<String> findRolesByName(String name){
        return realmMapper.findRoleByName(name);
    }
    public List<String> findPermsByName(String name){
        return realmMapper.findPermByName(name);
    }
    //得到通过shiro加密后的密码
    //此方法利用的是用户名作为的盐
    private String getPassWord(String username,String password) throws IOException {
        Properties properties = new Properties();
        // 使用ClassLoader加载properties配置文件生成对应的输入流
        InputStream in = this.getClass().getClassLoader().getResourceAsStream("shiro.properties");
        // 使用properties对象加载输入流
        properties.load(in);
        //获取key对应的value值
        String AlgorithmName = properties.getProperty("shiro.AlgorithmName");
        Integer Iterations= Integer.parseInt(properties.getProperty("shiro.Iterations"));
        if(AlgorithmName==null||AlgorithmName.length()==0){
            return new SimpleHash("MD5",password, ByteSource.Util.bytes(username),Iterations).toString();
        }else {
            return new SimpleHash(AlgorithmName,password, ByteSource.Util.bytes(username),Iterations).toString();
        }
    }

    public ReplyRegistMessage regist(String username,String passwd) throws IOException {
        if(findUserByName(username)!=null) {
            System.out.println("用户已经存在");
            return new ReplyRegistMessage(ReplyRegistMessage.user_exsit,"用户已经存在");
        }
        //利用shiro对密码进行加密
        String newPasswd=getPassWord(username, passwd);
        realmMapper.insertUser(username,newPasswd);
        return new ReplyRegistMessage(ReplyRegistMessage.regist_success,"注册成功");
    }
}
