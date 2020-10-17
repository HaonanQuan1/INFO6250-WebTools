package com.luv2code.part6.controller;

import com.luv2code.part6.entity.Cart;
import com.luv2code.part6.entity.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;

@WebServlet(name = "ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            request.getRequestDispatcher("/part6/AddSuccessful.jsp").forward(request, response);
            return;
        }
//        System.out.println(cart.getCart().get(0));
//        for (String name : items) {
//            Item item = cart.findItem(name);
//            if (item != null) {
//                int amount = item.getCount();
//                cart.modifyItemCount(name, ++amount);
//            } else {
//                cart.addItem(new Item(name, 1));
//            }
//        }
        for(String name:items){
            Item item = new Item(name,1);
            cart.addItem(item);
        }
//        System.out.println(cart.getCart().get(0));
        session.setAttribute("items", items);
//        System.out.println(Arrays.toString((String[])session.getAttribute("items")));
        session.setAttribute("cart", cart);
        System.out.println(items[0]);
        request.getRequestDispatcher("/part6/AddSuccessful.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if( cart == null){
            cart = new Cart();
        }
        Enumeration<String> items = request.getParameterNames();

        while(items.hasMoreElements()){
            String name = items.nextElement();
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
        request.getRequestDispatcher("/part6/ViewCart.jsp").forward(request,response);
    }
}
