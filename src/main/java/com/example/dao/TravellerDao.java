package com.example.dao;

import com.example.domain.Traveller;

import java.util.List;

public interface TravellerDao {
    List<Traveller> findByOrderId(String orderId);
}
