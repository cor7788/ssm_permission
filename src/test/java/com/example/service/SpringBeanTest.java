package com.example.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml", "classpath:spring-security.xml"})
public class SpringBeanTest {

    @Autowired
    BCryptPasswordEncoder encoder;

    @Test
    public void testPasswordEncoder() {
        String result = encoder.encode("123456");
        System.out.println(result);
    }
}
