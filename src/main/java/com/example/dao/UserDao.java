package com.example.dao;

import com.example.domain.UserInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    List<UserInfo> findAll();

    // 根据用户名查询角色信息，authorization
    UserInfo findByUsername(String username);

    void insertUser(UserInfo userInfo);

    // 用户详情
    UserInfo findById(String id);

    void insertUserAndRole(@Param("userId") String userId, @Param("roleId") String roleId);
}
