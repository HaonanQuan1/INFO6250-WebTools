package com.luv2code.part5.controller;

import com.luv2code.part5.DAO.BookDao;
import com.luv2code.part5.entity.book;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookServlet")
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response
        RequestDispatcher requestDispatcher;
        String amount = request.getParameter("amount");
        int count = Integer.valueOf(amount);

        List<String> isbn = new ArrayList<>();
        List<String> title = new ArrayList<>();
        List<String> authors = new ArrayList<>();
        List<String> prices = new ArrayList<>();
        List<book>  books = new ArrayList<>();
        for(int i = 0 ; i < count; i++){
//            String
            isbn.add(request.getParameter("isbn" +String.valueOf(i)));
            title.add(request.getParameter("title" + String.valueOf(i)));
            authors.add(request.getParameter("authors" + String.valueOf(i)));
            prices.add(request.getParameter("price" + String.valueOf(i)));
            books.add(new book(isbn.get(i),title.get(i),authors.get(i),Double.parseDouble(prices.get(i))));
        }
//        Connection connection = null;
//        PreparedStatement statement = null;
//        try{
//
//        }
        BookDao bookdao = new BookDao();
        int res = 0;
        try {
             res = bookdao.addBooks(isbn,title,authors,prices);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(res > 0){
            requestDispatcher = getServletContext().getRequestDispatcher("/part5/successAddBooks.jsp");
            request.setAttribute("amount",count);
            request.setAttribute("books",books);
            requestDispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
