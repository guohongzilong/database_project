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
  <% String admin= new String((request.getParameter("admin")).getBytes("ISO-8859-1"),"UTF-8");
     System.out.println(admin);
     //int a = Integer.parseInt(doctor);
     //doctor_dao mem=new doctor_dao(); 
     //System.out.println("hello,world");
     //ArrayList<Doctor> list = mem.getAllItems1(a);
     if (!admin.equals("123456")){%>
    	 <jsp:forward page="wrong.jsp"/>
    <%  }
    %>
  <body>
  
    <h1>Hello, Admin </h1>
    <div>
  
    <a target="_blank" href="admin_doctor.jsp"><input type="button" value="enter doctor account"/></a>
    <p>&nbsp;</p>
    <a target="_blank" href="admin_research.jsp"><input type="button" value="enter research account"/></a>
    <p>&nbsp;</p>
   <a target="_blank" href="admin_donor.jsp"><input type="button" value="enter donor account"/></a>
	</div>
  
          
    
  </body>
</html>
