import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.*;

@WebServlet("/form")
public class form extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    //     String str =
    //       """
    //     <!DOCTYPE html>
    // <html lang=\"en\">
    // <head>
    //     <meta charset=\"UTF-8\">
    //     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    //     <title>Form</title>
    // </head>
    // <body>
    // <form action=\"/form\" method=\"post\">
    // First Name:
    //     <input type=\"text\" name=\"fname\" id=\"fname\"><br>
    //    Last name <input type=\"text\" name=\"lname\" id=\"lname\">
    //    <button>Submit</button>
    //    </form>
    //    </body>
    // </html>
    // """;
    //     out.println(str);
    RequestDispatcher rs = req.getRequestDispatcher("/form.html");
    rs.forward(req, res);
  }

  public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    String str =
      """
        <html lang=\"en\">
        <head>
            <meta charset=\"UTF-8\">
            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
            <title>Form</title>
        </head>x
        <body>
        <div>
        """ +
      "<h1>Welcome " +
      req.getParameter("username") +
      "!</h1>\n" +
      """
        </div>
        </body>
        </html>
        """;
    out.println(str);
  }
}
