package com.example.dao;

import com.example.domain.Order;

import java.util.List;

public interface OrderDao {
    List<Order> findAll();
    Order findById(String id);
}
