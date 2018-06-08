<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.net.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

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
	<form method="post" action="loginSubmit.jsp">
		<label for="username">Email:</label> <input type="text" id="username"
			name="username" value=<%=username %>> <label for="password">Password:</label> <input
			type="text" id="password" name="password" value=<%=password %>> <label
			for="check">10tian</label> <input type="checkbox" id="check"
			name="check" checked> <input type="submit" value="Submit">


	</form>
</body>
</html>