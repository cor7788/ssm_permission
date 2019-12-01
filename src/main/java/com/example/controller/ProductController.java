package com.example.controller;

import com.example.domain.Product;
import com.example.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping()
    public String product(Model model) {
        List<Product> productList = productService.findAll();
        model.addAttribute("productList", productList);
        return "product";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "product_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addProduct(Product product) {
        productService.saveProduct(product);
        return "redirect:/product";
    }
}
