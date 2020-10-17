package com.luv2code.part7.tagHandler;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class tagHandler extends SimpleTagSupport {
    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";
    private String name;
    private String path;
//    @Override
    public void doTag() throws IOException {
        JspWriter out = getJspContext().getOut();
        out.write("<h1 align=\"center\">" + name + ".csv</h1>");
        out.println("<table border=1 align=\"center\">");
        try{
            Class.forName(CSV_JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(CSV_JDBC_HEADER+path);
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from "+name);
            ResultSetMetaData data = result.getMetaData();
            out.println("<tr>");
            int columnCount = data.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                String title = data.getColumnName(i);
                out.println("<th>" + title);
            }
            while (result.next()) {
                out.println("<tr>");
                for (int i = 1; i <= columnCount; i++) {
                    String value = result.getString(i);
                    out.println("<td>" + value);
                }
            }
            result.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        out.println("</table>");
        out.close();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
