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
 
  <body>
   <h1>Hello, Admin </h1>
   
   <div>
        <h2>Search doctor_name:</h2>
       <form action="doctor_find.jsp" target="_blank">
	<input type="text" name="doctor" />
	<input type="submit" value="Search"/>
	</form>

	<a href="add_doctor.jsp"><input type="button" value="Add a doctor"/></a>
        
          <h2>Doctor_list</h2>
          <table border="1">
    
 <% 
        //System.out.println("hello,world");
 		doctor_dao mem=new doctor_dao(); 
         //System.out.println("hello,world");
         ArrayList<Doctor> list = mem.getAllItems();
         //System.out.println("hello,world");
         if(list!=null&&list.size()>0)
         {
        	%>
        	<tr>
			<td>doctor_id</td>
			<td>name</td>
			<td>hostipal</td>
			<td>department</td>
			<td>phone</td>
			<td>operate</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list.size();i++)
          	{
				//System.out.println(list1.size());
        	 Doctor me = list.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me.getId() %></td>
			<td><%=me.getName() %></td>
			<td><%=me.getHospital() %></td>
			<td><%=me.getDepartment() %></td>
			<td><%=me.getPhone()%></td>
			<td><a target="_blank" href="doctor.jsp?doctor=<%=me.getId()%>">Enter
			&nbsp;&nbsp;&nbsp;<td><a href="delete_doctor.jsp?id=<%=me.getId()%>">Delete</td>
			</tr>
          <%
          }
         }
          %>
           </table>
			</div>
			
		
          
    
  </body>
</html>
