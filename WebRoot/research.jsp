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
     String research= new String((request.getParameter("research")).getBytes("ISO-8859-1"),"UTF-8");
     //System.out.println(doctor);
     int a = Integer.parseInt(research);
     Research_dao mem=new Research_dao(); 
     System.out.println("hello,world");
     ArrayList<Research> list = mem.getAllItems1(a);
     if (list.size()==0){%>
    	 <jsp:forward page="wrong.jsp"/>
    <%  }Research me = list.get(0);
    %>
  <body>
   <h1>Hello, <%=me.getName() %></h1>
    
             <div>
			<h2>Information</h2>
			<p>id:<%=me.getId()%></p>
			<p>name:<%=me.getName()%></p>
			<p>Address:<%=me.getAddress()%></p>
			<p>phone:<%=me.getPhone()%></p>
			</div>

          
           <div>
          <h2>research recording</h2>
          <table border="1">
         
           <% 
        //System.out.println("hello,world");
        R_report_dao mem1=new R_report_dao(); 
         //System.out.println("hello,world");
         ArrayList<R_report> list1 = mem1.getAllItems();
         //System.out.println("hello,world");
         if(list1!=null&&list1.size()>0)
         {
        	%>
        	<tr>
			<td>organ</td>
			<td>date</td>

			</tr>
		<%  
			//System.out.println(list1.size());
			for(int i=0;i<list1.size();i++)
          	{
				//System.out.println(list1.size());
        	 R_report me1 = list1.get(i);
        	 //System.out.println(me.getDoctor_id());
             if (me1.getResearch_id()==me.getId())
             {
     %>  
			<tr>
			<td><%=me1.getOrgan() %></td>
			<td><%=me1.getDate() %></td>
			</tr>
          <%
             }
          }
         }
          %>
          </table>
			</div>
			
			
			<div>
          <h2>research_require</h2>
          <table border="1">
         
           <% 
        //System.out.println("hello,world");
           R_require_dao mem2=new R_require_dao(); 
         //System.out.println("hello,world");
         ArrayList<R_require> list2 = mem2.getAllItems();
         //System.out.println("hello,world");
         if(list2!=null&&list.size()>0)
         {
        	%>
        	<tr>
			<td>organ</td>
			<td>purpose</td>
			<td>date</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list2.size();i++)
          	{
				
        	 R_require me2 = list2.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me2.getOrgan() %></td>
			<td><%=me2.getPurpose() %></td>
			<td><%=me2.getDate() %></td>
			</tr>
          <%
          }
         }
          %>
          </table>
			</div>
          
          
    
  </body>
</html>
