package com.example.service.impl;

import com.example.dao.RoleDao;
import com.example.domain.Role;
import com.example.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> findAll() {
        return roleDao.findAll();
    }

    @Override
    public void insertRole(Role role) {
        role.setId(UUID.randomUUID().toString());
        roleDao.insertRole(role);
    }

    @Override
    public List<Role> findOtherRolesByUserId(String userId) {
        return roleDao.findOtherRolesByUserId(userId);
    }

    @Override
    public void insertPermissions(String roleId, String[] permissionIds) {
        for (String perId : permissionIds) {
            roleDao.insertRoleAndPermission(roleId, perId);
        }
    }
}
