package com.example.dao;

import com.example.domain.Permission;

import java.util.List;

public interface PermissionDao {
    List<Permission> findByRoleId(String roleId);
    List<Permission> findAll();
    void insertPermission(Permission permission);
    List<Permission> findOtherPermissionsByRoleId(String roleId);
}
