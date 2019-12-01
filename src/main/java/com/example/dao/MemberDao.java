package com.example.dao;

import com.example.domain.Member;

public interface MemberDao {
    Member findById(String id);
}
