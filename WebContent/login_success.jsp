<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Successed!</h1>
	<%
		String user="";
		if(session.getAttribute("username")!=null)
			user=session.getAttribute("username").toString();
	
			
	%>
	
	Welcome<font color="red"><%=user %></font>
</body>
</html>