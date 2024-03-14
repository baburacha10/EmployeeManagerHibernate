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

<title>Employee Manager : Update Employee!</title>
</head>
<body class="pagecolor">

	<%
		int id = Integer.parseInt(request.getParameter("empId"));
	
		Session session2 = GetFactory.getFactory().openSession();
		Employee employee = session2.get(Employee.class, id);
	
		session2.close();
	%>

	<%@include file="navbar.jsp" %>
	
	<div class="container my-4 p-4 mt-5" style="background-color: white; border: 1px solid black; border-radius: 50px;">
	<h1 class="container text-center">Update Your Employee!</h1>

		<form action="UpdateEmpServlet" method="post">

			<input name="id" value="<%=employee.getId() %>" type="hidden">

			<div class="mb-3">
				<label for="name" class="form-label">Employee Name</label>
				<input type="text" class="form-control"
					id="name" value="<%=employee.getName() %>" name="name" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="dept" class="form-label">Employee Department</label>
				<input type="text" value="<%=employee.getDept() %>" name="dept" class="form-control"
					id="dept">
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update Employee</button>
			</div>
		</form>

	</div>

</body>
</html>