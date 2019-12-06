package com.example.service;

import com.example.domain.Role;
import org.springframework.security.access.prepost.PreAuthorize;

import java.util.List;

public interface RoleService {

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    List<Role> findAll();

    void insertRole(Role role);

    List<Role> findOtherRolesByUserId(String userId);

    void insertPermissions(String roleId, String[] permissionIds);
}
