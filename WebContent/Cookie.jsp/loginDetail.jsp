<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.net.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Detail</h1>
	
	<hr>
	<%
	String username = "";
	String password = "";
	Cookie[] cookie = request.getCookies();
	if (cookie != null & cookie.length > 0) {
		for (Cookie c : cookie) {
			if (c.getName().equals("username")) {
				username = URLDecoder.decode(c.getValue(),"utf-8");
			}
			if (c.getName().equals("password")) {
				password = URLDecoder.decode(c.getValue(),"utf-8");
			}
		}
	}
	%>
	USername:<%=username %>
	Password:<%=password %>
	<a href="index.jsp">Back to Index</a>
	</hr>
</body>
</html>