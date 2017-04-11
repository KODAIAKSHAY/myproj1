<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link xmlns:sec="http://www.springframework.org/security/tags">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script><html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
   	
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
        <li class="active"><a href="./viewproducts"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home">  HOME</a></li>
           </ul>
            <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
     <ul class="nav navbar-nav navbar-right" >
     <li><a href="#" style="color:white;">Welcome.... <%=session.getAttribute("loggedInUser") %></a></li>
	   <li class="active">   <a href="logout"  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out">LOGOUT</a><li>
	
      </div><!-- /.container-fluid -->
</nav>

<div class="container">
<div ng-app="myApp" ng-controller="customersCtrl">
<table class="table table-hover table-bordered">
  <tr style="text-align:center; ">  
       <th >Product Image</th>
       <th style="text-align:center ">Product Id</th>
       <th style="text-align:center ">Product Name</th>
       <th style="text-align:center ">Product Price</th>
       <th style="text-align:center ">Product Description</th>
       <th colspan="3" style="text-align:center ">Action</th>
  </tr>
  <tr ng-repeat="x in names | filter:searchBy" style="text-align:center; ">
  <td><img src='<x:url value="/resources/images/{{x.image}}"/> 'style="width:150; height:300;"/></td>
     <td style="text-align:center "><b>{{x.id}}</b></td>
    <td style="text-align:center "><b>{{x.Name}}</b></td>
    <td style="text-align:center "><b>{{x.Price}}</b></td>
    <td style="text-align:center "><b>{{x.Description}}</b></td>
    <td>
    <a href="${pageContext.servletContext.contextPath}/viewproduct?id={{x.id}}" class="glyphicon glyphicon-info-sign"></a></td>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
    <td><a href="${pageContext.servletContext.contextPath}/editproduct?id={{x.id}}" class="glyphicon glyphicon-pencil"></a></td>
   <td> <a href="${pageContext.servletContext.contextPath}/delete?id={{x.id}}"  class="glyphicon glyphicon-remove-sign"></a></td>
   
    </sec:authorize>
  </tr>
</table><a>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<a href="addpro" class="btn btn-info">Add Product</a>
</sec:authorize></a>
<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("list")
    .then(function (response) {$scope.names = response.data;});
}); 
</script>
	 	
</body>
</html>	