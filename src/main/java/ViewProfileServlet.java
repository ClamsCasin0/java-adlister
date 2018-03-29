import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//                                      would it be? "/WEB-INF/profile"
@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        i think this goes here?
        if (request.getSession().getAttribute("user") == false) {
            response.sendRedirect('/login');
            return;
        }
//              this one too
        if (request.getSession().getAttribute("is_logged_in") == false)  {
            response.getWriter().println("<h1>You're unauthorized, go away!</h1>");
        }


        //                                         maybe here too?
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);




    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
