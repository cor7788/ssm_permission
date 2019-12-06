package com.example.controller;

import com.example.domain.Permission;
import com.example.domain.Role;
import com.example.service.PermissionService;
import com.example.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PermissionService permissionService;

    @RequestMapping
    public String role(Model model) {
        List<Role> roleList = roleService.findAll();
        model.addAttribute("roleList", roleList);
        return "role";
    }

    @RequestMapping("/add")
    public String add() {
        return "role_add";
    }

    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public String add(Role role) {
        roleService.insertRole(role);
        return "redirect:/role";
    }

    @RequestMapping("/add_permission")
    public String addPermission(String id, Model model) {
        // 查询角色信息
        model.addAttribute("roleId", id);
        // 查询角色没有的权限
        List<Permission> permissions = permissionService.findOtherPermissionsByRoleId(id);
        model.addAttribute("permissions", permissions);
        return "role_add_permission";
    }

    @RequestMapping("/add_permissions")
    public String addPermissions(String roleId, String[] permissionIds) {
        roleService.insertPermissions(roleId, permissionIds);
        return "redirect:/role";
    }
}
