package com.aaa.service;

import com.aaa.entity.Menu;
import com.aaa.entity.User;

import java.util.List;

public interface MenuService {
    User loginname(String loginname);

    List<Menu> queryMenuByUid(Integer userid);

    List<Menu> loadAvailableMenu();

    List<Menu> selAllMenuByUser(Integer userId);

    List<Menu> queryMenuAllList(Menu menu);

    int addMenu(Menu menu);

    int deleteMenu(Integer id);

    int checkMenuHasChildren(Integer pid);

    int updateMenu(Menu menu);

}
