<%@page import="com.tyrowebdev.GPMS.dao.PartsManagementdao"%>
<%@page import="com.tyrowebdev.GPMS.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%
	Integer id = Integer.parseInt(request.getParameter("id"));
	Parts part = PartsManagementdao.getPartById(id);
	%>


	<div align="center" class="box3">
		<form action="editPartph.jsp" method="post">
			<table border="2">
				<thead>
					<tr>
						<th colspan="2">Product Details</th>
					</tr>
				</thead>
				<tr>
					<td>Part Id</td>
					<td><input type="text" size="20" value="<%=id%>" name="id" readonly="readonly"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" value="<%=part.getName()%>"name="partName" size="20"></td>
				</tr>
				<tr>
					<td>Quantity</td>
					<td><input type="text" value="<%=part.getQuantity()%>" name="partQuantity" size="20"></td>
				</tr>
				<tr>
					<td>Cost</td>
					<td><input type="text" value="<%=part.getCost()%>" name="partCost" size="20"></td>
				</tr>
				<tr>
					<td>Added On</td>
					<td><input type="text" value="<%=part.getDate_time()%>" size="20" readonly="readonly"></td>
				</tr>
			</table>
			<button style="margin-top: 10px;cursor: pointer;">Save</button>
		</form>
	</div>

</body>
</html>