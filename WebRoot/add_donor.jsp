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
	<h2>Add a donor</h2>
	<form action="add_donor_action.jsp">

	id: <input type="text" name="id" /> </br></br>
	name: <input type="text" name="name" /> </br></br>
	address: <input type="text" name="address" /> </br></br>
	phone: <input type="text" name="phone" /> </br></br>
	blood_type: <input type="text" name="blood_type" /> </br></br>
	medical_id: <input type="text" name="medical_id" /> </br></br>
	status: <input type="text" name="status" /> </br></br>
	organ: <input type="text" name="organ" /> </br></br>

	<input type="submit" value="Submit"/></a>
	</form>
</body>