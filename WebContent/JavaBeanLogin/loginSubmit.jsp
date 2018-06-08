<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Submit</h1>
	<jsp:useBean id="thisUser" class="com.test.User" scope="page"></jsp:useBean>
	<jsp:useBean id="userDao" class="com.dao.UserDao" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="thisUser"/>
	<%
	if(userDao.UserDao(thisUser)){
		session.setAttribute("username", thisUser.getUsername());
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	}else
		response.sendRedirect("login_failure.jsp");
	%>
</body>
</html>