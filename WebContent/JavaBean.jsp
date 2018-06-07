<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Java Bean</h1>
<% 
	//User user=new User();
	//user.setUsername("reggie");
	//user.setPassword("123");
%>
<jsp:useBean id="myUser" class="com.test.User" scope="page"></jsp:useBean>

<!-- All -->
<jsp:setProperty property="*" name="myUser"/>
Username:<%=myUser.getUsername() %>
</br>
Password:<%=myUser.getPass() %>
</br>
<!-- just username -->
<jsp:setProperty property="username" name="myUser"/>
Username:<%=myUser.getUsername() %>


<!-- set value -->

<jsp:setProperty property="username" name="myUser" value="reggie"/>
<jsp:setProperty property="pass" name="myUser" value="121312"/>

Username:<%=myUser.getUsername() %>
Pass:<%=myUser.getPass() %>

 <!-- get url value -->
 
 </br>
 </br>
 <jsp:setProperty property="pass" name="myUser" param="password"/>
  <jsp:setProperty property="username" name="myUser" param="username"/>
 Username:<%=myUser.getUsername() %>
 Password:<%=myUser.getPass() %>
 
 <!-- getProperty -->
 </br>
 Username:<jsp:getProperty property="username" name="myUser"/>
 </br>
 Password:<jsp:getProperty property="pass" name="myUser"/>
</body>
</html>