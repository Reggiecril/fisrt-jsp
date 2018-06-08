<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ page import="com.database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//获得id
	int id = Integer.valueOf(request.getParameter("id"));
	ItemsDao itemsDao = new ItemsDao();
	Items item = itemsDao.getItemById(id);
	List<Items> cookieList=new ArrayList<>();
	//Cookies
	String list = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (Cookie c : cookies) {
			if (c.getName().equals("listView")) {
				list = c.getValue();
			}
		}
		cookieList=itemsDao.getListView(list);
	}
	//Save cookies
	list += id;
	Cookie cookie = new Cookie("listView", list);
	response.addCookie(cookie);
%>
<%
	//循环开始
	if(item!=null){
%>
	<div
		style="float: left; width: 680px; height: 250px; margin: 0px 10px 10px 0; padding: 10px;">
		<p>
			<strong>Product id:</strong><%=item.getId()%></p>
		<p>
			<strong>Product Name:</strong><%=item.getName()%></p>
		<p>
			<strong>Product City:</strong><%=item.getCity()%></p>
		<p>
			<strong>Product Price:</strong><%=item.getPrice()%></p>
		<p>
			<strong>Product Number:</strong><%=item.getNumber()%></p>
		<p>
			<strong>Product Picture:</strong><%=item.getPicture()%></p>
		<a href="productDetail.jsp?id=<%=item.getId()%>"></a>
	</div>

	<%} %>
	<a href="product.jsp">Product</a>
	<%
		if (cookieList != null && cookieList.size() > 0) {
			for (int i = 0; i < cookieList.size(); i++) {//循环开始
				//获得循环item
				Items items = cookieList.get(i);
	%>
	<div
		style="float: right; width: 680px; height: 250px; margin: 0px 10px 10px 0; padding: 10px;">
		<p>
			<strong>Product id:</strong><%=items.getId()%></p>
		<p>
			<strong>Product Name:</strong><%=items.getName()%></p>
		<p>
			<strong>Product City:</strong><%=items.getCity()%></p>
		<p>
			<strong>Product Price:</strong><%=items.getPrice()%></p>
		<p>
			<strong>Product Number:</strong><%=items.getNumber()%></p>
		<p>
			<strong>Product Picture:</strong><%=items.getPicture()%></p>
	</div>
	<%
			}
		}
	%>
</body>
</html>