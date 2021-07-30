package com.hxh.emsjsp.service;

import com.hxh.emsjsp.entity.User;

public interface UserService {

    /**
     * 用户注册
     * @param user user
     */
    void register(User user);

    /**
     * 登录
     * @param username username
     * @param password password
     * @return
     */
    User login(String username, String password);
}
