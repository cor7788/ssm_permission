package com.example.service.impl;

import com.example.dao.PLogDao;
import com.example.domain.PLog;
import com.example.service.PLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("pLogService")
public class PLogServiceImpl implements PLogService {

    @Autowired
    PLogDao pLogDao;

    @Override
    public List<PLog> findAll() {
        return pLogDao.findAll();
    }

    @Override
    public void insertPLog(PLog pLog) {
        pLogDao.insertPLog(pLog);
    }
}
