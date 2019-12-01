package com.example.controller;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class BasicController {

    @RequestMapping("/starter")
    public String starter() {
        return "starter";
    }
}
