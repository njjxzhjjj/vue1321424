package com.xiexin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/")
    public String index1(){
        System.out.println("true = " + true);
        return "index";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/addBusiness")
    public String addBusiness(){
        return "addBusiness";
    }

    @RequestMapping("/vuedemo000")
    public String vuedemo000(){
        return "vuedemo000";
    }

    @RequestMapping("/vuedemo001")
    public String vuedemo001(){
        return "vuedemo001";
    }

    @RequestMapping("/vuedemo002")
    public String vuedemo002(){
        return "vuedemo002";
    }

    @RequestMapping("/vuedemo003")
    public String vuedemo003(){
        return "vuedemo003";
    }

    @RequestMapping("/vuedemo004")
    public String vuedemo004(){
        return "vuedemo004";
    }

    @RequestMapping("/vuez")
    public String vuez(){
        return "vuez";
    }

    @RequestMapping("/jiantouhanshu")
    public String jiantouhanshu(){
        return "jiantouhanshu";
    }

    @RequestMapping("/bList")
    public String bList(){
        return "bList";
    }
}

