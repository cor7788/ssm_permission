package com.example.service.impl;

import com.example.dao.ProductDao;
import com.example.domain.Product;
import com.example.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Override
    public List<Product> findAll() {
        return productDao.findAll();
    }

    @Override
    public void saveProduct(Product product) {
        product.setId(UUID.randomUUID().toString());
        productDao.saveProduct(product);
    }
}
