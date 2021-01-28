<%@page import="com.tyrowebdev.GPMS.dao.PartsManagementdao"%>
<%@page import="com.tyrowebdev.GPMS.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div align="center" style="padding-top: 50px; margin-bottom: 50px;">
		<form action="searchPart.jsp">
			<label>Enter Part ID:</label> <input type="text" name="id" size="25">
			<button style="background: #00ff00; padding: 10px;cursor: pointer;">Search</button>
		</form>
	</div>
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
				String id = request.getParameter("id");
			if (id != null) {
				Parts p = PartsManagementdao.getPartById(id);

				if (p != null) {
			%>
			<tr>
				<td><%=p.getId()%></td>
				<td><%=p.getName()%></td>
				<td><%=p.getQuantity()%></td>
				<td>&#8377; <%=p.getCost()%></td>
				<td><%=p.getDate_time()%></td>
				<td><button
						onclick="location.href = 'editParts.jsp?id=<%=p.getId()%>';">Edit</button></td>
				<td><button
						onclick="location.href = 'deletePartsPh.jsp?id=<%=p.getId()%>';">Delete</button></td>
			</tr>

			<%
				} else {
			%>
			<tr>
				<td colspan="5">No Record To Display</td>
			</tr>
			<%
				}
			} else {
			%>
			<tr>
				<td colspan="5">No Record To Display</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>