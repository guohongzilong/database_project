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
  <% String donor= new String((request.getParameter("donor")).getBytes("ISO-8859-1"),"UTF-8");
     //System.out.println(admin);
     //int a = Integer.parseInt(doctor);
     Donor_dao mem=new Donor_dao(); 
     //System.out.println("hello,world");
     ArrayList<Donor> list = mem.getAllItems2(donor);
     %>
     
  <body>
   <h1>Hello, Admin </h1>
   
   <div>
        
        
          <h2>donor</h2>
          <table border="1">
    
 <% 
        //System.out.println("hello,world");
 		//doctor_dao mem=new doctor_dao(); 
         //System.out.println("hello,world");
         //ArrayList<Doctor> list = mem.getAllItems();
         //System.out.println("hello,world");
         if(list!=null&&list.size()>0)
         {
        	%>
        	<tr>
			<td>id</td>
			<td>name</td>
			<td>organ</td>
			<td>operate</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list.size();i++)
          	{
				//System.out.println(list1.size());
        	  Donor me = list.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me.getId() %></td>
			<td><%=me.getName() %></td>
			<td><%=me.getOrgan() %></td>
			<td><a href="donor.jsp?donor=<%=me.getId()%>">Enter</td>
			&nbsp;&nbsp;&nbsp;<td><a href="delete_donor.jsp?id=<%=me.getId()%>">Delete</td>
			</tr>
          <%
          }
         }
          %>
           </table>
			</div>
			
	
<a href="admin.jsp?admin=123456"><input type="button" value="return"/></a>
         

  </body>
</html>
