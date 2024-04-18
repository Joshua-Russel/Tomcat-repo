import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class home extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
    rd.forward(req, res);
  }
}
