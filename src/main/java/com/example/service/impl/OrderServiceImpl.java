package com.example.service.impl;

import com.example.dao.OrderDao;
import com.example.domain.Order;
import com.example.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> findAll() {
        return orderDao.findAll();
    }

    @Override
    public PageInfo<Order> findByPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Order> list = orderDao.findAll();
        return new PageInfo<>(list);
    }

    @Override
    public Order findById(String id) {
        return orderDao.findById(id);
    }
}
