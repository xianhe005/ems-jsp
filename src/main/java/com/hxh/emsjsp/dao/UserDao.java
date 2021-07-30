package com.hxh.emsjsp.dao;

import com.hxh.emsjsp.entity.User;

public interface UserDao {

    // 根据用户名查询用户
    User findByUserName(String username);

    // 注册保存
    void save(User user);
}
