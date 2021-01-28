<%@page import="com.tyrowebdev.GPMS.dao.*" %>
<%@page import="com.tyrowebdev.GPMS.model.*" %>

<%

String partName = request.getParameter("partName");
Integer partQuantity = Integer.parseInt(request.getParameter("partQuantity"));
Integer partCost = Integer.parseInt(request.getParameter("partCost"));

Parts part = new Parts(partName,partQuantity,partCost);

int status = PartsManagementdao.addParts(part);
 if(status == 1)  
 { 
	response.sendRedirect("viewParts.jsp");
 } 
 else
{
	response.sendRedirect("Error.jsp");
}

%>