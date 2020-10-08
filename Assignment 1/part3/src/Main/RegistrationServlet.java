package Main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String file = request.getParameter("pic");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String[] hobby = request.getParameterValues("hobby");
        String address = request.getParameter("address");

        PrintWriter out = response.getWriter();
        if(!password.equals(repassword)){
            out.println("<html>");
            out.println("<head>");
            out.println("<title>");
            out.println("password doesn't match");
            out.println("</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("the passwords you entered are not same");
            out.println("</body>");
            out.println("</html>");
            return ;
        }
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("Form Details");
        out.println("</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("Email is: "+email);
        out.println("<br>");
        out.println("Password is "+password);
        out.println("<br>");
        out.println("Pic is "+file);
        out.println("<br>");
        out.println("gender is "+gender);
        out.println("<br>");
        out.println("hobbies are "+String.join(",",hobby));
        out.println("<br>");
        out.println("Address is "+address);
        out.println("<br>");
        out.println("</body>");
        out.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
