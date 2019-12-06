package com.example.dao;

import com.example.domain.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleDao {

    List<Role> findAll();

    List<Role> findByUserId(String userId);

    void insertRole(Role role);

    List<Role> findOtherRolesByUserId(String userId);

    void insertRoleAndPermission(@Param("roleId") String roleId, @Param("permissionId") String permissionId);
}
