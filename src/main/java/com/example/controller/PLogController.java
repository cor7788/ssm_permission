package com.example.controller;

import com.example.domain.PLog;
import com.example.service.PLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/log")
public class PLogController {

    @Autowired
    private PLogService pLogService;

    @RequestMapping
    public String log(Model model) {
        List<PLog> logList = pLogService.findAll();
        model.addAttribute("logList", logList);
        return "log";
    }
}
