package Main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(name = "ShowRequestHeaders")
public class ShowRequestHeaders extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Servlet Example: showing Request Headers";
        String docType = "<!DOCTYPE HTML PUBLIC \"-//W#C//DTD HTML 4.0"+"Transitional//EN\">\n";
        out.println(docType+"<html>\n"+
                "<head><title>"+title+"</title></head>\n"+
                "<body>\n"+"<h1 align=\"CENTER\"> "+title+"</h1>\n"+
                "<b>Request Method: </b>"+
                request.getMethod()+"<br>\n"+
                "<b>Request URI:</b>"+
                request.getRequestURI()+"<br>\n"+
                "<b>Request Protocol:</b>"+
                request.getProtocol()+"<br><br>\n"+
                "<table border=1 align=\"center\">\n+" +
                "<tr>\n"+
                "<th>Header Name<th>header value");

        Enumeration headerNames = request.getHeaderNames();
        while(headerNames.hasMoreElements()){
            String headerName = (String) headerNames.nextElement();
            out.println("<tr><td>" +headerName);
            out.println("     <td>"+request.getHeader(headerName));
        }
        out.println("</table>\n</body></html>");
    }
}
