package com.example.controller;

import com.example.domain.Role;
import com.example.domain.UserInfo;
import com.example.service.RoleService;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @RequestMapping
    public String user(Model model) {
        List<UserInfo> userList = userService.findAll();
        model.addAttribute("userList", userList);
        return "user";
    }

    @RequestMapping("/add")
    public String add() {
        return "user_add";
    }

    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public String add(UserInfo userInfo) {
        userService.insertUser(userInfo);
        return "redirect:/user";
    }

    @RequestMapping("/{id}")
    public String detail(@PathVariable("id") String userId, Model model) {
        UserInfo userInfo = userService.findById(userId);
        model.addAttribute("userInfo", userInfo);
        return "user_detail";
    }

    @RequestMapping("/add_role")
    public String addRole(String id, Model model) {
        // 查询角色信息
        UserInfo userInfo = userService.findById(id);
        model.addAttribute("userInfo", userInfo);
        // 查询用户没有的角色
        List<Role> roles = roleService.findOtherRolesByUserId(id);
        model.addAttribute("roles", roles);
        return "user_add_role";
    }

    @RequestMapping("/add_roles")
    public String addRoles(String userId, String[] roleIds) {
        userService.insertRoles(userId, roleIds);
        return "redirect:/user";
    }
}
