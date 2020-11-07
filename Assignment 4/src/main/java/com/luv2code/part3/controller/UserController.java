package com.luv2code.part3.controller;

import com.lowagie.text.Document;
import com.lowagie.text.pdf.PdfWriter;
import com.luv2code.part3.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/part3")
public class UserController {
    @RequestMapping("/showForm")
    public String showForm(Model theModel){
        theModel.addAttribute("User",new User());
        return "part3/user-form";
    }

//    @RequestMapping("/processForm")
//    public String processForm(@Valid @ModelAttribute("User") User user, BindingResult result){
//        if(result.hasErrors()){
//            return "user-form";
//        }else{
//            return "user-confirmation";
//        }
//    }
    @PostMapping(value = "/processForm")
    public View downloadPdf(ModelMap map, User user){
        map.addAttribute("User",user);
        return new PdfBuilder();
    }
//    @Override
//    protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter pdfWriter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
//
//    }
}
