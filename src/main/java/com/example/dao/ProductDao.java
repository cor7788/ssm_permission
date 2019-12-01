package com.example.dao;

import com.example.domain.Product;

import java.util.List;

public interface ProductDao {

    List<Product> findAll();
    void saveProduct(Product product);
    Product findById(String id);
}
