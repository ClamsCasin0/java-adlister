import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name="HelloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");

        if(name == null) {
            name = "World";
        }

        response.getWriter().println("<h1 style=\"font-family: fantasy;\">The time on the server is: " + "<%= new java.util.Date() %>");
        response.getWriter().println("<h1 style=\"font-family: fantasy;\">Hello World!</h1>");
        response.getWriter().println("<p> Enter your name:</p>");
        response.getWriter().println("<form>");
        response.getWriter().println("<input name=\"name\" /> ");
        response.getWriter().println("</form>");

//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<h1>Hello, " + name + " World!</h1>");
    }
}