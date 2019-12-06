package com.example.service;

import com.example.domain.UserInfo;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface UserService extends UserDetailsService {

    @Secured("ROLE_ADMIN")
    List<UserInfo> findAll();
    void insertUser(UserInfo userInfo);
    UserInfo findById(String id);
    void insertRoles(String userId, String[] roleIds);
}
