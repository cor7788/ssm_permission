package com.example.dao;

import com.example.domain.PLog;

import java.util.List;

public interface PLogDao {

    List<PLog> findAll();
    void insertPLog(PLog pLog);
}
