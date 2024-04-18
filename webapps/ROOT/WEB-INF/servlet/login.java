import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class login extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("login.html");
    rd.forward(req, res);
  }
}
