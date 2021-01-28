<%@page import="com.tyrowebdev.GPMS.dao.PartsManagementdao"%>
<%@page import="com.tyrowebdev.GPMS.model.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Products</title>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div align="center" class="box2">
		<table border="2">
			<thead>
				<tr>
					<th>Part ID</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>Cost</th>
					<th>Added On</th>
					<th colspan="2">Actions</th>
				</tr>
			</thead>
			<%
				List<Parts> partsList = PartsManagementdao.getAllParts();
			for (Parts p : partsList) {
			%>
			<tr>
				<td><%=p.getId()%></td>
				<td><%=p.getName()%></td>
				<td><%=p.getQuantity()%></td>
				<td>&#8377; <%=p.getCost()%></td>
				<td><%=p.getDate_time()%></td>
				<td><button
						onclick="location.href = 'editParts.jsp?id=<%=p.getId()%>';" style="cursor: pointer;">Edit</button></td>
				<td><button
						onclick="location.href = 'deletePartsPh.jsp?id=<%=p.getId()%>';" style="cursor: pointer;">Delete</button></td>
			</tr>

			<%
				}
			%>
		</table>
	</div>
</body>
</html>