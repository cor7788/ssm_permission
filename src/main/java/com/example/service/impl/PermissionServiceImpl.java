package com.example.service.impl;

import com.example.dao.PermissionDao;
import com.example.domain.Permission;
import com.example.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PermissionDao permissionDao;

    @Override
    public List<Permission> findAll() {
        return permissionDao.findAll();
    }

    @Override
    public void insertPermission(Permission permission) {
        permission.setId(UUID.randomUUID().toString());
        permissionDao.insertPermission(permission);
    }

    @Override
    public List<Permission> findOtherPermissionsByRoleId(String roleId) {
        return permissionDao.findOtherPermissionsByRoleId(roleId);
    }
}
