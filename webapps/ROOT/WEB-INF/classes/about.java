import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class about extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("/views/about.jsp");
    rd.forward(req, res);
  }
}
