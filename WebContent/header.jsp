<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<nav>
		<div class="navbar">
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="addParts.jsp">Add Part</a></li>
				<li><a href="viewParts.jsp">View Parts</a></li>
				<li><a href="searchPart.jsp">Search Part</a></li>
				<li style="float: right; margin-right: 10px"><a
					href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>