

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "DisplayCSVServlet")
public class ShowCSVServlet extends HttpServlet {
    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fileName = request.getParameter("fileName");
        String path = request.getRealPath("/files");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Display CSV</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1 align=\"center\">" + fileName + ".csv</h1>");
        out.println("<table border=1 align=\"center\">");
        try{
            Class.forName(CSV_JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(CSV_JDBC_HEADER+path);
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from "+fileName);
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
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
