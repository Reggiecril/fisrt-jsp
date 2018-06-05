<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<form action="loginSubmit.jsp" method="post">
		<label for="email">Email:</label>
		<input type="text" id="email" name="email" value="hello">
		<label for="pass">Password:</label>
		<input type="text" id="pass" name="pass" value="hello">
		
		<input type="submit" value="Confirm">
	
	</form>
	
	email:<%=request.getParameter("email")%>
	password:<%=request.getParameter("pass") %>
	
</body>
</html>