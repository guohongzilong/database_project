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
  <% String doctor= new String((request.getParameter("doctor")).getBytes("ISO-8859-1"),"UTF-8");
     //System.out.println(doctor);
     int a = Integer.parseInt(doctor);
     doctor_dao mem=new doctor_dao(); 
     System.out.println("hello,world");
     ArrayList<Doctor> list = mem.getAllItems1(a);
     if (list.size()==0){%>
    	 <jsp:forward page="wrong.jsp"/>
    <%  }Doctor me = list.get(0);
    %>
  <body>
   <h1>Hello, <%=me.getName() %></h1>
    
 
             <div>
			<h2>Information</h2>
			<p>id:<%=me.getId()%></p>
			<p>name:<%=me.getName()%></p>
			<p>hospital:<%=me.getHospital()%></p>
			<p>department:<%=me.getDepartment()%></p>
			<p>phone:<%=me.getPhone()%></p>
			</div>
           <div>
          <h2>operated recording</h2>
          <table border="1">
         
           <% 
        //System.out.println("hello,world");
         Operate_dao mem1=new Operate_dao(); 
         //System.out.println("hello,world");
         ArrayList<Operate> list1 = mem1.getAllItems();
         //System.out.println("hello,world");
         if(list1!=null&&list1.size()>0)
         {
        	%>
        	<tr>
			<td>patient_id</td>
			<td>organ</td>
			<td>donor_id</td>
			<td>date</td>
			<td>result</td>
			</tr>
		<%  
			//System.out.println(list1.size());
			for(int i=0;i<list1.size();i++)
          	{
				//System.out.println(list1.size());
        	 Operate me1 = list1.get(i);
        	 //System.out.println(me.getDoctor_id());
             if (me1.getDoctor_id()==me.getId())
             {
     %>  
			<tr>
			<td><%=me1.getPatient_id() %></td>
			<td><%=me1.getOrgan() %></td>
			<td><a target="_black" href="donor.jsp?donor=<%=me1.getDonor_id()%>"><%=me1.getDonor_id()%></a></td>
			<td><%=me1.getDate() %></td>
			<td><%=me1.getResult() %></td>
			</tr>
          <%
             }
          }
         }
          %>
          </table>
			</div>
			
			
			<div>
          <h2>Patient_require</h2>
          <table border="1">
         
           <% 
        //System.out.println("hello,world");
           P_require_dao mem2=new P_require_dao(); 
         //System.out.println("hello,world");
         ArrayList<P_require> list2 = mem2.getAllItems();
         //System.out.println("hello,world");
         if(list2!=null&&list.size()>0)
         {
        	%>
        	<tr>
			<td>patient_id</td>
			<td>organ</td>
			<td>date</td>
			</tr>
		<%  
			//System.out.println(list.size());
			for(int i=0;i<list2.size();i++)
          	{
				//System.out.println(list1.size());
        	 P_require me2 = list2.get(i);
        	 //System.out.println(me.getDoctor_id());
     %>  
			<tr>
			<td><%=me2.getPatient_id() %></td>
			<td><%=me2.getOrgan() %></td>
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
