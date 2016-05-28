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
        <h2>Search research_center_name:</h2>
       <form action="research_find.jsp" target="_blank">
	<input type="text" name="research" />
	<input type="submit" value="Search"/>
	</form>

	<a href="add_research.jsp"><input type="button" value="Add a research_center"/></a>
        
          <h2>research_list</h2>
          <table border="1">
    
 <% 
        //System.out.println("hello,world");
 		Research_dao mem1=new Research_dao(); 
         //System.out.println("hello,world");
         ArrayList<Research> list1 = mem1.getAllItems();
         //System.out.println("hello,world");
         if(list1!=null&&list1.size()>0)
         {
        	%>
        	<tr>
			<td>Research_center_id</td>
			<td>name</td>
			<td>address</td>
			<td>phone</td>
			<td>operate</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list1.size();i++)
          	{
				//System.out.println(list1.size());
        	 Research me = list1.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me.getId() %></td>
			<td><%=me.getName() %></td>
			<td><%=me.getAddress() %></td>
			<td><%=me.getPhone()%></td>
			<td><a target="_blank"  href="research.jsp?research=<%=me.getId()%>">Enter
			&nbsp;&nbsp;&nbsp;<td><a href="delete_research.jsp?id=<%=me.getId()%>">Delete</td>
			</tr>
          <%
          }
         }
          %>
           </table>
			</div>
			
  
    
  </body>
</html>
