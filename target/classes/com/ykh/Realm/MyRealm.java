package com.ykh.Realm;

import com.ykh.pojo.realm.User;
import com.ykh.service.userService.RealmService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;

public class MyRealm extends AuthorizingRealm {
    @Autowired
    RealmService realmService;
    //权限验证
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String) principalCollection.getPrimaryPrincipal();
        List<String> roleByName = realmService.findRolesByName(username);
        List<String> permByName = realmService.findPermsByName(username);
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo(new HashSet<>(roleByName));
        simpleAuthorizationInfo.setStringPermissions(new HashSet<>(permByName));
        return simpleAuthorizationInfo;
    }
    //身份验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username = (String)authenticationToken.getPrincipal();
        User userByName = realmService.findUserByName(username);
        if(userByName != null){
            SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(userByName.getName(), userByName.getPass(), this.getName());
            simpleAuthenticationInfo.setCredentialsSalt(ByteSource.Util.bytes(username));
            return simpleAuthenticationInfo;
        }
        return null;
    }
}
