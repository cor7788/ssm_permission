package com.example.controller;

import com.example.domain.Order;
import com.example.service.OrderService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping
    public String order(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
                        @RequestParam(name = "pageSize", defaultValue = "10") int pageSize, Model model) {
        PageInfo<Order> pageOrder = orderService.findByPage(pageNum, pageSize);
        model.addAttribute("pageOrder", pageOrder);
        return "order";
    }

    @RequestMapping("/detail")
    public String detail(String id, Model model) {
        Order order = orderService.findById(id);
        model.addAttribute("order", order);
        return "order_detail";
    }
}
