import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class contact extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("/views/contact.jsp");
    rd.forward(req, res);
  }
}
