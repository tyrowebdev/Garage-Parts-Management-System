<%@page import="com.tyrowebdev.GPMS.dao.*" %>
<%@page import="com.tyrowebdev.GPMS.model.*" %>

<%
Integer id = Integer.parseInt(request.getParameter("id"));

int status = PartsManagementdao.deletePart(id);
 if(status == 1)  
 { 
	response.sendRedirect("viewParts.jsp");
 } 
 else
{
	response.sendRedirect("Error.jsp");
}

%>