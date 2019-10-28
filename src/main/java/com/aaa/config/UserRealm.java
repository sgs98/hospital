package com.aaa.config;


import com.aaa.entity.User;
import com.aaa.service.MenuService;

import com.aaa.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {
    @Autowired
    private MenuService menuService;

    /*
     * 认证
     * */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //获取的前台username

        String username = (String) authenticationToken.getPrincipal();

        User sysUser = null;
        try {
            sysUser = menuService.loginname(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //判断对象是否有值
        if (sysUser == null) {
            return null;
        }
        //密码不需要我们比对，shiro会给我们比对                      //对象    //获取前台密码
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(sysUser, sysUser.getPwd(), ByteSource.Util.bytes(sysUser.getSalt()), getName());
        return info;

    }

    /*
     * 授权
     * */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

       /* //获取登陆的身份    根据登陆这id查找该用户的所有 权限
        Subject subject = SecurityUtils.getSubject();
        //从subject中获取登陆者的信息
        User user = (User) subject.getPrincipal();
        //查询该用户有哪有授权的信息
        List<SysPermission> permission = sysPermissionService.findPermissionByUserId(user.getId());
        //把查询出的<List>信息转化为Set放入set集合进行授权
        Set<String> pres = new HashSet<String>();
        for (SysPermission p : permission) {
            pres.add(p.getPercode());
        }
        pres.add("user:create");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setStringPermissions(pres);*/
        return null;
    }


}
