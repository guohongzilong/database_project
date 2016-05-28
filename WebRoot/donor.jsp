<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.*"%>
<%@ page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
    <% 
     String donor= new String((request.getParameter("donor")).getBytes("ISO-8859-1"),"UTF-8");
     //System.out.println(doctor);
     int a = Integer.parseInt(donor);
     Donor_dao mem=new Donor_dao(); 
     //System.out.println("hello,world");
     ArrayList<Donor> list = mem.getAllItems1(a);
     if (list.size()==0){%>
    	 <jsp:forward page="wrong.jsp"/>
    <%  }Donor me = list.get(0);
    %>
  <body>
   <h1>Hello, <%=me.getName() %></h1>
    
             <div>
			<h2>Information</h2>
			<p>id:<%=me.getId()%></p>
			<p>name:<%=me.getName()%></p>
			<p>Address:<%=me.getAddress()%></p>
			<p>phone:<%=me.getPhone()%></p>
			<p>blood_type:<%=me.getBlood_type()%></p>
			<p>medical_id:<%=me.getMedical_id()%></p>
			<p>status:<%=me.getStatus()%></p>
			<p>organ:<%=me.getOrgan()%></p>
			</div>
        <a href="admin.jsp?admin=123456"><input type="button" value="return"/></a>
    
  </body>
</html>
