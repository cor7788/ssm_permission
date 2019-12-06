package com.example.service;

import com.example.domain.Permission;

import javax.annotation.security.RolesAllowed;
import java.util.List;

public interface PermissionService {
    @RolesAllowed("ROLE_ADMIN")
    List<Permission> findAll();
    void insertPermission(Permission permission);
    List<Permission> findOtherPermissionsByRoleId(String roleId);
}
