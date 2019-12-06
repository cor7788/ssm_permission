package com.example.service.impl;

import com.example.dao.UserDao;
import com.example.domain.Role;
import com.example.domain.UserInfo;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        UserInfo userInfo = userDao.findByUsername(s);
        boolean isUserEnabled = "1".equals(userInfo.getStatus());
        List<SimpleGrantedAuthority> authorities = getAuthorities(userInfo.getRoles());
        return new User(userInfo.getUsername(), userInfo.getPassword(), isUserEnabled,
                true, true, true,
                Objects.requireNonNull(authorities));
    }

    private List<SimpleGrantedAuthority> getAuthorities(List<Role> roles) {
        ArrayList<SimpleGrantedAuthority> list = new ArrayList<>();
        for (Role role : roles) {
            String roleName = role.getRoleName();
            SimpleGrantedAuthority authority = new SimpleGrantedAuthority(roleName);
            list.add(authority);
        }
        return list;
    }

    @Override
    public List<UserInfo> findAll() {
        return userDao.findAll();
    }

    @Override
    public void insertUser(UserInfo userInfo) {
        userInfo.setId(UUID.randomUUID().toString());
        String password = userInfo.getPassword();
        String encodedPassword = passwordEncoder.encode(password);
        userInfo.setPassword(encodedPassword);
        userDao.insertUser(userInfo);
    }

    @Override
    public UserInfo findById(String id) {
        return userDao.findById(id);
    }

    @Override
    public void insertRoles(String userId, String[] roleIds) {
        for(String roleId: roleIds) {
            userDao.insertUserAndRole(userId, roleId);
        }
    }
}
