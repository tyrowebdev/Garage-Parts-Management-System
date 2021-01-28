<%@page import="com.tyrowebdev.GPMS.model.Admin"%>
<%@page import="com.tyrowebdev.GPMS.dao.AdminLogindao"%>

<%
String uname  = request.getParameter("uname");
String password = request.getParameter("password");

if(AdminLogindao.isUserValid(new Admin(uname,password)))
{
	session.setAttribute("uname", uname);
	response.sendRedirect("home.jsp");
}
else
{
response.sendRedirect("loginFailed.jsp");	
}
%>