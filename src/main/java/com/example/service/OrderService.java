package com.example.service;

import com.example.domain.Order;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface OrderService {
    List<Order> findAll();
    PageInfo<Order> findByPage(int pageNum, int pageSize);
    Order findById(String id);
}
