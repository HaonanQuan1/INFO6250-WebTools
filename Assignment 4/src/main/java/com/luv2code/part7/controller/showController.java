package com.luv2code.part7.controller;

import com.luv2code.part7.entity.Utility;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/part7")
public class showController {

    ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
    Utility utility = context.getBean("Utility",Utility.class);
    @GetMapping("/showMessage")
    public String showMessage(Model theModel){
        theModel.addAttribute("Utility",utility);
        return "part7/home";
    }
}
