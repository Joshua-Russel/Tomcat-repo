
<%@page import="java.sql.*,java.util.*"%>

<% try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mining?useSSL=false",
        "miningapp",
        "password"
      );
      String INSERT_USERS_SQL =
        "select * from users where u_name=? and password=?";
      PreparedStatement pr = connection.prepareStatement(INSERT_USERS_SQL);
     String uname=request.getParameter("username");
      String pass=request.getParameter("password");
      pr.setString(1,uname );
      pr.setString(2, pass);
     
      ResultSet rs = pr.executeQuery();
     if(!rs.next()){
        response.sendRedirect("/login");
     }
     else{
      session.setAttribute("user",uname);
      session.setMaxInactiveInterval(100);
        response.sendRedirect("/home");
     }

    } catch (Exception e) { System.out.println(e.getMessage());} %>