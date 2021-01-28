<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome! To GPMS </title>
</head>
<body>
<%@ include file="header.jsp" %>
<% String uname = (String)session.getAttribute("uname"); %>

<div align="center" class="box">
<h1>Garage Parts Management System</h1>
<h2>Welcome  <%= uname %> !!</h2>
</div>
</body>
</html>