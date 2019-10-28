package com.aaa.service;

import com.aaa.entity.DataGridView;
import com.aaa.entity.Role;
import com.aaa.entity.User;
import com.aaa.entity.UserRole;

import java.util.List;

public interface UserService {
    List<User> selectAllUser(User user);
    int updateUser(User user);
    List<Role> initUserRole(Role role);
    int addUser(User user);
    void deleteUser(Integer userid);
    int resetUserPwd(User user);
    DataGridView queryUserRole(Integer userid);

    void saveUserRole(UserRole userRole);
    List<User> updateLogin(User user);
    int editLogin(User user);
    int editPwd(User user);
}
