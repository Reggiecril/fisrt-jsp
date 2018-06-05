<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session Page1</title>
</head>
<body>
	<h1>Session Page 1</h1>
	
	<%
		session.setAttribute("username", "reggie");
		session.setMaxInactiveInterval(5);//5 seconds
		SimpleDateFormat sfd=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		Date date =new Date(session.getCreationTime());
	%>
	
	<p>Date:<%=sfd.format(date) %></p>
	<p>Username:<%=session.getAttribute("username") %></p>
	<a href="session_page2.jsp">sessino</a>
	<a href="page.jsp">page</a>
</body>
</html>