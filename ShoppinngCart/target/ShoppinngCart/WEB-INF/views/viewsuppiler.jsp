<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Product Details</title>
</head>
<body>


<nav class="navbar navbar-default navbar-inverse" role="navigation" style="background-color:#1E90FF;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
	  <a class="navbar-brand" href="#"  style="background-color:#1E90FF;"><b>MOBILES WORLD</b></a>
    
      </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./home"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home">  HOME</a></li>
           </ul>
     <ul class="nav navbar-nav navbar-right">
	   <li class="active">   <a href="logout"  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out">LOGOUT</a><li>
	
      </div><!-- /.container-fluid -->
</nav>
  	
	<h2>Suppiler Details</h2>
      <div class="container">
     
            <table class="table table-bordered">
            <thead>
				<tr>
					<th>Id</th>
					<th>Suppiler Id</th>
					<th>Suppiler Name</th>
					<th>Suppiler Location</th>
					<th>Category Id</th>
					<th>Product Id</th>
					<th>Product Name</th>										
				</tr>
			</thead>
			
            <tr>
            <td>${suppiler.id}</td>
            <td>${suppiler.supid}</td>
            <td>${suppiler.supname}</td>
            <td>${suppiler.suplocation}</td>
            <td>${suppiler.categoryid}</td>
            <td>${suppiler.productid}</td>        
            <td>${suppiler.productname}</td>
            </tr>
            
            </table>
            
      </div>
      <jsp:include page="footer.jsp"></jsp:include>
	
   </body>
</html>
