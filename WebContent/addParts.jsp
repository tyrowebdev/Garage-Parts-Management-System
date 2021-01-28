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

	<div align="center" class="box3">
		<form action="addPartsPh.jsp" method="post">
			<table border="2">
				<thead>
					<tr>
						<th colspan="2">Enter Details Of Part To Be Added<th>
					</tr>
				</thead>
				<tr>
					<td>Part Name</td>			
					<td><input type="text" name="partName" size="20"></td>			
				</tr>
				<tr>
					<td>Quantity</td>			
					<td><input type="text" name="partQuantity" size="20"></td>			
				</tr>
				<tr>
					<td>Cost</td>			
					<td><input type="text" name="partCost" size="20"></td>			
				</tr>
			</table>
			<button style="margin-top:10px;">Add</button>
		</form>
	</div>

</body>
</html>