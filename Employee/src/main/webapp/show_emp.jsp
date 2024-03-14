<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.project.entities.Employee"%>
<%@page import="com.project.helper.GetFactory"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Employee Manager : Show Employee!</title>
</head>
<body class="pagecolor">
	
	<%@include file="navbar.jsp" %>
	<h1 class="container my-3 text-center">Employees's Details</h1>
	
	<div class="container">
		
		<%
			Session session2 = GetFactory.getFactory().openSession();
			Query query = session2.createQuery("from Employee");
			
			List<Employee> list = query.list();
			
			for(Employee employee : list)
			{
		%>
			
			<div class="card text-center" style="max-width: 1000px; border: 1px solid black; border-radius: 50px; margin-bottom: 10px; margin-left: 75px;">
				
				<div class="container text-center mt-2">
			  		<img src="img/employees.png" class="card-img-top" alt="employee" style="height: 100px; width: 100px;">
			  </div>
			
			  <div class="card-body">
			    <h5 class="card-title">Employee Name : <%=employee.getName() %></h5>
			    <p class="card-text">Employee Department : <%=employee.getDept() %> </p>
			    <p class="card-text text-success">Last Updated : <%=employee.getAddedDate() %> </p>
			    <a href="update_emp.jsp?empId=<%=employee.getId() %>" class="btn btn-warning">Update</a>
			    <a href="DeleteEmpServlet?empId=<%=employee.getId() %>" class="btn btn-danger">Delete</a>
			  </div>
			</div>
			
		<%
			}
			
			session2.close();
		%>
		
	
	</div>	

</body>
</html>