<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.database.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset class="Productform" style="background-color: #E8BB9A;
    border: 2px double #000;border-radius: 15px;padding: 10px;margin: 0 auto;	margin-bottom: 20px;">
    <%
    	
    	ItemsDao itemsDao=new ItemsDao();
    	List<Items> list=itemsDao.getAllItems();//获得所有items
    	if(list!=null&&list.size()>0){
	    	for(int i=0;i<list.size();i++){//循环开始
	    		//获得循环item
	    		Items item=list.get(i);
    	
    
    %>
				<div style="float: right; width: 680px;height: 250px;margin: 0px 10px 10px 0;padding: 10px;">
				<p><strong>Product id:</strong><%=item.getId() %></p>
				<p><strong>Product Name:</strong><%=item.getName() %></p>
				<p><strong>Product City:</strong><%=item.getCity() %></p>
				<p><strong>Product Price:</strong><%=item.getPrice() %></p>
				<p><strong>Product Number:</strong><%=item.getNumber() %></p>
				<p><strong>Product Picture:</strong><%=item.getPicture() %></p>
				<a href="productDetail.jsp?id=<%=item.getId() %>">link!</a>
				</div>
	<%
    		}
    	}else{
    		
    	}
	%>
				
				
				
	
	</fieldset> 
</body>
</html>