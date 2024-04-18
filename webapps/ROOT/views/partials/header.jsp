<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1.0"
		/>
		<title>Financial Services</title>
		<link
			rel="stylesheet"
			href="../../stylesheets/all.css"
		/>
	</head>
	<body>
		<header class="header">
			<h2>Ins Service</h2>
			<nav class="h-nav">
				<%if(session.getAttribute("user") != null){%>
				<a
					href="/home"
					class="h-nav-a"
				>
					Home
				</a>
				<a
					href="/contact"
					class="h-nav-a"
				>
					Contact
				</a>
				<a
					href="/xml/show.jsp"
					class="h-nav-a"
				>
					Details
				</a>
				<a
					href="logout.jsp"
					class="h-nav-a"
				>
					Logout
				</a>
				<%} else {%>
				<a
					href="/login"
					class="h-nav-a"
				>
					Login
				</a>
				<a
					href="/register.html"
					class="h-nav-a"
				>
					Register
				</a>
				<%}%>
			</nav>
		</header>
	
