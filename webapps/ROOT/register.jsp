
<%@page import="java.sql.*,java.util.*"%>
<%! UUID uuid=UUID.randomUUID(); %>
<% try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mining?useSSL=false",
        "miningapp",
        "password"
      );
      String INSERT_USERS_SQL =
        "insert into users values(?,?,?,?)";
      PreparedStatement pr = connection.prepareStatement(INSERT_USERS_SQL);
        String user_id=uuid.toString();
          String uname=request.getParameter("username");
      String pass=request.getParameter("password");
      String email=request.getParameter("email");
      pr.setString(1, user_id);
      pr.setString(2, uname);
      pr.setString(3, pass);
      pr.setString(4, email);
      int rs = pr.executeUpdate();
      session.setAttribute("user",uname);
      response.sendRedirect("/home");    

    } catch (Exception e) { System.out.println(e.getMessage());} %>
