import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/form/new")
public class app extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    out.println("hwllo");
  }

  public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/newdb?useSSL=false",
        "miningapp",
        "password"
      );
      String INSERT_USERS_SQL =
        "select * from users where username=? and password=?";
      PreparedStatement pr = connection.prepareStatement(INSERT_USERS_SQL);
      pr.setString(1, req.getParameter("username"));
      pr.setString(2, req.getParameter("password"));
      ResultSet rs = pr.executeQuery();
      if (!rs.next()) {
        out.println("<h1>invalid user</h1>");
      } else {
        out.println("<h1>Welcome " + req.getParameter("username") + "</h1>\n");
        String str = "select * from inbox";
        PreparedStatement pr1 = connection.prepareStatement(str);
        ResultSet rs1 = pr1.executeQuery();
        while (rs1.next()) {
          out.println("<h1>" + rs1.getString(1) + "</h1>");
        }
      }
    } catch (Exception e) {}
  }
}
