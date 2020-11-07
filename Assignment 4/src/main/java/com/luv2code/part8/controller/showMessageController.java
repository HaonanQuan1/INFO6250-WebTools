package com.luv2code.part8.controller;

import com.luv2code.part7.entity.Utility;
import com.luv2code.part8.entity.Part8Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/part8")
public class showMessageController {

    @Autowired
    Part8Utility utility;

    @GetMapping("/showMessage")
    public String showMessage(Model theModel){
        theModel.addAttribute("part8",utility);
        return "part8/home";
    }
}
