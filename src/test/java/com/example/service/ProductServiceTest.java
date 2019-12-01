package com.example.service;

import com.example.domain.Product;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ProductServiceTest {


    @Autowired
    ProductService productService;

    @Test
    public void testFindAll() {
        List<Product> list = productService.findAll();
        for (Product product : list) {
            System.out.println(product);
        }
    }

    @Test
    public void testSaveProduct() {
        Product product = new Product();
        String id = UUID.randomUUID().toString();
        product.setId(id);
        Random random = new Random();
        int num = random.nextInt(1000);
        product.setProductNumber("product-" + num);
        product.setProductName("北京三日游");
        product.setCityName("北京");
        product.setDepartureTime(new Date());
        product.setProductPrice(1200.0);
        product.setProductDesc("帝都，值得一逛");
        product.setProductStatus(1 + "");
        productService.saveProduct(product);
    }
}
