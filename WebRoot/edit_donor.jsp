<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.*"%>
<%@ page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<head>
	<h1>Hello, administrator</h1>
</head>

 <% String id= new String((request.getParameter("id")).getBytes("ISO-8859-1"),"UTF-8");
 
     int a = Integer.parseInt(id);
     Donor_dao mem=new Donor_dao(); 
     ArrayList<Donor> list = mem.getAllItems1(a);
     Donor me=new Donor();
     me=list.get(0);
     %>

<body>
	<h2>edit a donor</h2>
	<form action="edit_donor_action.jsp?id=<%=me.getId()%>&name=<%=me.getName()%>">

	id: <input type="text" name="id" value=<%=me.getId() %>> </br></br>
	name: <input type="text" name="name" value=<%=me.getName() %>> </br></br>
	address: <input type="text" name="address" value=<%=me.getAddress() %>> </br></br>
	phone: <input type="text" name="phone" value=<%=me.getPhone() %>> </br></br>
	blood_type: <input type="text" name="blood_type" value=<%=me.getBlood_type() %>> </br></br>
	medical_id: <input type="text" name="medical_id" value=<%=me.getMedical_id() %>> </br></br>
	status: <input type="text" name="status" value=<%=me.getStatus() %>> </br></br>
	organ: <input type="text" name="organ" value=<%=me.getOrgan() %>> </br></br>

	<input type="submit" value="Submit"/></a>
	</form>
</body>