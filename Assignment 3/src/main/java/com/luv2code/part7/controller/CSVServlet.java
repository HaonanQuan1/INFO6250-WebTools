package com.luv2code.part7.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "CSVServlet")
public class CSVServlet extends HttpServlet {
//    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
//    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("fileName");
        String path = request.getRealPath("/part7/files");
        request.setAttribute("fileName",fileName);
        request.setAttribute("path",path);
        request.getRequestDispatcher("/part7/showCSV.jsp").forward(request,response);
//        try{
//            Class.forName(CSV_JDBC_DRIVER);
//            Connection connection = DriverManager.getConnection(CSV_JDBC_HEADER+path);
//            Statement statement =connection.createStatement();
//            ResultSet result = statement.executeQuery("select * from "+fileName);
//            ResultSetMetaData data = result.getMetaData();
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
