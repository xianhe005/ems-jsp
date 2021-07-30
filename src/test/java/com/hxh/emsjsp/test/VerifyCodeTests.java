package com.hxh.emsjsp.test;

import com.hxh.emsjsp.utils.VerifyCodeUtils;
import org.junit.jupiter.api.Test;

import java.io.FileOutputStream;
import java.io.IOException;

public class VerifyCodeTests {

    @Test
    public void testGenerate() {
        String s = VerifyCodeUtils.generateVerifyCode(4);
        System.out.println(s);

        // 写入图片
        try {
            FileOutputStream os = new FileOutputStream("C:\\Users\\hxsz\\IdeaProjects\\ems-jsp\\aa.png");
            VerifyCodeUtils.outputImage(220, 80, os, s);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
