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
        <h2>Search donor_name:</h2>
       <form action="donor_find.jsp" target="_blank">
	<input type="text" name="donor" />
	<input type="submit" value="Search"/>
	</form>

	<a href="add_donor.jsp "><input type="button" value="Add a donor"/></a>
        
          <h2>donor_list</h2>
          <table border="1">
    
 <% 
        //System.out.println("hello,world");
 		Donor_dao mem2=new Donor_dao(); 
         //System.out.println("hello,world");
         ArrayList<Donor> list2 = mem2.getAllItems();
         //System.out.println("hello,world");
         if(list2!=null&&list2.size()>0)
         {
        	%>
        	<tr>
			<td>donor_id</td>
			<td>name</td>
			<td>organ</td>
			<td>operate</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list2.size();i++)
          	{
				//System.out.println(list1.size());
        	 Donor me = list2.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me.getId() %></td>
			<td><%=me.getName() %></td>
			<td><%=me.getOrgan() %></td>
			<td><a target="_blank" href="donor.jsp?donor=<%=me.getId()%>">Enter
			&nbsp;&nbsp;&nbsp;<td><a href="delete_donor.jsp?id=<%=me.getId()%>">Delete</td>
			&nbsp;&nbsp;&nbsp;<td><a href="edit_donor.jsp?id=<%=me.getId()%>">Edit</td>
			</tr>
          <%
          }
         }
          %>
           </table>
			</div>
         
          
    
  </body>
</html>
