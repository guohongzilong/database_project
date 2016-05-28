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

<body>
	<h2>Add a doctor</h2>
	<form action="add_doctor_action.jsp">

	id: <input type="text" name="id" /> </br></br>
	name: <input type="text" name="name" /> </br></br>
	hospital: <input type="text" name="hospital" /> </br></br>
	department: <input type="text" name="department" /> </br></br>
	phone: <input type="text" name="phone" /> </br></br>

	<input type="submit" value="Submit"/></a>
	</form>
</body>