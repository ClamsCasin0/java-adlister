import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Drill3Servlet", urlPatterns = "/guess")
public class Drill3Servlet extends HttpServlet {

    private int computerGuess = 5;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        int userGuess = Integer.parseInt(request.getParameter("number"));

        String message;

        if (userGuess == computerGuess) {
            message = "YOU WON!";
        } else if (userGuess > computerGuess) {
            message = "lower";
        } else {
            message = "Higher";
        }


        request.setAttribute("message", message);

        request.getRequestDispatcher("result.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("guess.jsp").forward(request, response);

    }



}


