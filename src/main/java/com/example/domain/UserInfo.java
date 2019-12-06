package com.example.domain;

import java.io.Serializable;
import java.util.List;

public class UserInfo implements Serializable {
    private String id;
    private String email;
    private String username;
    private String password;
    private String phoneNumber;
    private String status; // 0-未启用 1-启用
    private String statusStr;
    private List<Role> roles;

    public String getStatusStr() {
        if ("0".equals(status)) {
            statusStr = "未启用";
        }
        if("1".equals(status)) {
            statusStr = "已启用";
        }
        return statusStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id='" + id + '\'' +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", status='" + status + '\'' +
                ", statusStr='" + statusStr + '\'' +
                ", roles=" + roles +
                '}';
    }
}
