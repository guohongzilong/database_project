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
  <% String id= new String((request.getParameter("id")).getBytes("ISO-8859-1"),"UTF-8");
  String name= new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
  String address= new String((request.getParameter("address")).getBytes("ISO-8859-1"),"UTF-8");
  //String department= new String((request.getParameter("department")).getBytes("ISO-8859-1"),"UTF-8");
  String phone= new String((request.getParameter("phone")).getBytes("ISO-8859-1"),"UTF-8");
  String medical_id= new String((request.getParameter("medical_id")).getBytes("ISO-8859-1"),"UTF-8");
  String blood_type= new String((request.getParameter("blood_type")).getBytes("ISO-8859-1"),"UTF-8");
  String status= new String((request.getParameter("status")).getBytes("ISO-8859-1"),"UTF-8");
  //String department= new String((request.getParameter("department")).getBytes("ISO-8859-1"),"UTF-8");
  String organ= new String((request.getParameter("organ")).getBytes("ISO-8859-1"),"UTF-8");
  
     //System.out.println(doctor);
     int a = Integer.parseInt(id);
     int b = Integer.parseInt(medical_id);
     Donor_dao mem=new Donor_dao(); 
     Donor me=new Donor();
    me.setId(a);
    me.setName(name);
    me.setAddress(address);
    //me.setDepartment(department);
    me.setPhone(phone);
    me.setBlood_type(blood_type);
    me.setMedical_id(b);
    me.setStatus(status);
    me.setOrgan(organ);
    mem.insert(me);
     %>
    <jsp:forward page="admin_donor.jsp"/>
   
  <body>
   
  </body>
</html>
