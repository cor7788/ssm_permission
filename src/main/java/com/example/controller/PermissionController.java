package com.example.controller;

import com.example.domain.Permission;
import com.example.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    PermissionService permissionService;

    @RequestMapping
    public String permission(Model model) {
        List<Permission> pList = permissionService.findAll();
        model.addAttribute("pList", pList);
        return "permission";
    }

    @RequestMapping("/add")
    public String add() {
        return "permission_add";
    }

    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public String add(Permission permission) {
        permissionService.insertPermission(permission);
        return "redirect:/permission";
    }
}
