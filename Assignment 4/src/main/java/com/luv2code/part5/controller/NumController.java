package com.luv2code.part5.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NumController extends AbstractController {
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String num = request.getParameter("amount");
        if(request.getAttribute("unsafe_request") == "true") {
            return new ModelAndView("part5/securityerror");
        }
        int count = Integer.parseInt(num);
        ModelAndView modelAndView = new ModelAndView("part5/books","count",count);
        return modelAndView;
    }
}
