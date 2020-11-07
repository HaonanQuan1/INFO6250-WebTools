package com.luv2code.part6.controller;

import com.luv2code.part6.entity.Cart;
import com.luv2code.part6.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;

@Controller
@RequestMapping("/part6")
public class cartController {

//    @Autowired
//    Cart cart;
    @GetMapping(value = "/showContent")
    public String showContent(){
        return "part6/home";
    }

    @GetMapping(value = "/books")
    public String books(){
        return "part6/books";
    }
    @GetMapping(value = "/computers")
    public String computers(){
        return "part6/computers";
    }
    @GetMapping(value = "/music")
    public String music(){
        return "part6/music";
    }

    @GetMapping(value = "/leftFrame")
    public String leftFrame(){
        return "part6/leftFrame";
    }

    @GetMapping(value = "/right")
    public String right(){
        return "part6/right";
    }

    @GetMapping("/viewCart")
    public String viewCart(){
        return "part6/viewCart";
    }


    @PostMapping("/addItems")
    public String addItems(HttpServletRequest request, HttpServletResponse response){

        String[] items = request.getParameterValues("books");
        if (items == null)
            items = request.getParameterValues("music");
        if (items == null)
            items = request.getParameterValues("computers");
//        System.out.println(Arrays.toString(items));
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        if (items == null) {
            session.setAttribute("items", items);
            session.setAttribute("cart", cart);
//            request.getRequestDispatcher("/part6/AddSuccessful.jsp").forward(request, response);
        }
        for(String name :items){
            Item item = new Item(name,1);
            cart.addItem(item);
        }
        session.setAttribute("cart",cart);
        session.setAttribute("items", items);
        return "part6/addSuccessful";
    }

    @PostMapping("/updateItems")
    public String updateItems(HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if( cart == null){
            cart = new Cart();
        }
        Enumeration<String> list = request.getParameterNames();

        while(list.hasMoreElements()){
            String name = list.nextElement();
            if(name.equals("Submit")) continue;
            String amount = request.getParameter(name);
            int count = Integer.parseInt(amount);
            if(count == 0){
                cart.deleteItem(name);
            }else{
                cart.modifyItemCount(name,count);
            }
        }

        session.setAttribute("cart",cart);

        return "part6/viewCart";
    }

}
