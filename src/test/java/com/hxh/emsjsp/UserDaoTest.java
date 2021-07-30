package com.hxh.emsjsp;

import com.hxh.emsjsp.dao.UserDao;
import com.hxh.emsjsp.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;

public class UserDaoTest extends BasicTests {

    @Autowired
    private UserDao userDao;

    @Test
    public void testFindByUserName() {
        User user = userDao.findByUserName("test");
        System.out.println(DigestUtils.md5DigestAsHex("123456".getBytes(StandardCharsets.UTF_8)).equals(user.getPassword()));
        System.out.println(user);
    }
}
