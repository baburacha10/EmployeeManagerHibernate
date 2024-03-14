<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title>Employee Manager : Home!</title>
  </head>
  <body class="pagecolor">
  
  	<%@ include file="navbar.jsp" %>
  	
  	<div class="container text-center mt-4 p-2" style="border: 1px solid transparent; border-radius: 50px; max-width: 1000px; background-color: white;">
    	<h1 class="mt-3 text-dark">Manage your Employees</h1>
    	
    	<img alt="employee" src="img/employees.png" style="height: 300px; width: 300px;">
    	<br>
    	<a href="add_emp.jsp"><button class="btn btn-dark">Get Started</button></a>
  	</div>
    
  </body>
</html>