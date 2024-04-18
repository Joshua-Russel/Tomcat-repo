
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8" />
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1.0"
		/>
		<title>Document</title>
	</head>
	<body>
	<form
			action="app.jsp"
			method="post"
		>
			<label for="username">username</label>
			<input
				type="text"
				name="username"
			/>

			<label for="password">password</label>
			<input
				type="password"
				name="password"
			/>
			<button>Submit</button>
		</form>
		<%@page import="java.sql.*"%>
<% try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/newdb?useSSL=false",
        "miningapp",
        "password"
      );
      String INSERT_USERS_SQL =
        "insert into users values(?,?)";
      PreparedStatement pr = connection.prepareStatement(INSERT_USERS_SQL);
      pr.setString(1, request.getParameter("username"));
      pr.setString(2, request.getParameter("password"));
      int rs = pr.executeUpdate();

    } catch (Exception e) {} %>
		
	</body>
</html>
