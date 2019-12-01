package com.example.service;

import com.example.domain.Order;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class OrderServiceTest {

    @Autowired
    private OrderService orderService;

    @Test
    public void testFindAll() {
        List<Order> list = orderService.findAll();
        for (Order order : list) {
            System.out.println(order);
        }
    }

    @Test
    public void testFindByPage() {
        PageInfo<Order> pageOrder = orderService.findByPage(1, 10);
        System.out.println(pageOrder);
    }

    @Test
    public void testFindById() {
        Order order = orderService.findById("9ac32c2b-da4b-496e-ad42-2ef2f9fc0525");
        System.out.println(order);
    }
}
