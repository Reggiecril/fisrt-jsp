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
	request.setCharacterEncoding("UTF-8");
	String []cookies=request.getParameterValues("check");
	if(cookies!=null&&cookies.length>0){
		//保存中文
		String username=URLEncoder.encode(request.getParameter("username"),"UTF-8");
		String password=URLEncoder.encode(request.getParameter("password"),"UTF-8");
		Cookie usernameCookie=new Cookie("username",username);
		Cookie passwordCookie=new Cookie("password",password);
		usernameCookie.setMaxAge(864000);
		passwordCookie.setMaxAge(864000);
		response.addCookie(usernameCookie);	
		response.addCookie(passwordCookie);
	}else{
		Cookie[] cookie=request.getCookies();
		for(Cookie c:cookie){
			if(c.getName().equals("username")||c.getName().equals("password")){
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
	}
	response.sendRedirect("loginDetail.jsp");
	
	%>
</body>
</html>