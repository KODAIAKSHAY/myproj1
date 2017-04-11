<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"></html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Manage Suppilers</title>
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
        <li class="active"><a href="./as"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home">  HOME</a></li>
           </ul>
            <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="viewsuppilers" style="background-color:#1E90FF;"><b> MANAGE SUPPLIER </b></a></li>
        <li><a href="viewproducts" style="background-color:#1E90FF;"><b> MANAGE PRODUCT </b></a></li>
        
        
      </ul>
   
     <ul class="nav navbar-nav navbar-right">
	   <li class="active">    <a href='<x:url value="j_spring_security_logout"/>'  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out"> <b> LOGOUT </b></a><li></li>
      </div><!-- /.container-fluid -->
</nav>


	    	<div class="container">
		<div ng-app="myApp" ng-controller="customersCtrl">
		
			<table class="table table-striped table-hover">
				<tr>
					<th>Id</th>
					<th>Suppiler Id</th>
					<th>Suppiler Name</th>
					<th>Suppiler Location</th>
					<th>Action</th>
				</tr>
				<tr ng-repeat="z in names | filter:searchBy">
					<td>{{z.id}}</td>
					<td>{{z.supid}}</td>
					<td>{{z.supname}}</td>
					<td>{{z.suplocation}}</td>
				
					<td><a href="${pageContext.servletContext.contextPath}/viewsuppiler?id={{z.id}}" class="glyphicon glyphicon-info-sign"></a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${pageContext.servletContext.contextPath}/editsuppiler?id={{z.id}}" class="glyphicon glyphicon-pencil"></a>
							<a href="${pageContext.servletContext.contextPath}/deletesuppiler?id={{z.id}}" class="glyphicon glyphicon-remove-sign"></a>
						</sec:authorize></td>
				</tr>
			</table>
			<a href="./addSuppiler" class="btn btn-info">Add Suppiler</a>


		</div>

		<script>
			var app = angular.module('myApp', []);
			app.controller('customersCtrl', function($scope, $http) {
				$http.get("listsup").then(function(response) {
					$scope.names = response.data;
				});
			});
		</script>
	</div>
		         <jsp:include page="footer.jsp"></jsp:include>
			
	
</body>
</html>
