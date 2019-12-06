package com.example.service;

import com.example.domain.PLog;

import java.util.List;

public interface PLogService {

    List<PLog> findAll();
    void insertPLog(PLog pLog);
}
