<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML comment -->
	<%-- JSP comment --%> 
	<%
		//regular comment
		/**
		 **XML comment
		 **/
		 out.println("This is Reggiecril!");
	%>
	<h1>Hello,World!!</h1>
	
	<%! String name="谢云丞";
		int add(int a,int b){
			return a+b;
		}%>
		
	<h2>This is <%=name %>,10+10=<%=add(10,10) %></h2>
	
	
	<%! String getMultiTable(){
			String s="";
			for(int i=1;i<=9;i++){
				for(int j=1;j<=i;j++){	
					s+=j+"*"+i+"="+(i*j)+"&nbsp;&nbsp;&nbsp;";
				}
				s+="<br>";
			}
			return s;
		}
	void getMultiTable1(JspWriter out) throws Exception{
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){	
				out.println(j+"*"+i+"="+(i*j)+"&nbsp;&nbsp;&nbsp;");
			}
			out.println("<br>");
		}
	}
	%>
	
	<%=getMultiTable() %>
		<% getMultiTable1(out);%>

</body>
</html>