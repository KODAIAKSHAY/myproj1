<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"></html>
	   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<style>
p {
    font-size: 100%;
}</style>
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
        <li class="active"><a href="./ak"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home">  HOME</a></li>
           </ul>
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="contact"  style="background-color:#1E90FF;"><b>  CONTACT US</b></a></li>
           </ul>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./about"  style="background-color:#1E90FF;" ><b>  ABOUT US</b></a></li>
           </ul>
           
           </div>
           </div>
           
     <ul class="nav navbar-nav navbar-right">
	   <li class="active">   <a href='<x:url value="j_spring_security_logout"/>'  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out"> <b> LOGOUT </b></a><li>
	</li></ul>
      </div><!-- /.container-fluid -->
</nav>
  
<h2>Product Details</h2><br><br><br><br>
      	<div class="col-md-7">
					<div class="container">
           
            <img src='<x:url value="/resources/images/${product.image}"/>'/>
            </div>
            </div>
            
            <div class="col-md-5">
					<div class="container" >
           <p> ${product.name}</p><br><br>
            <p>${product.price}</p><br><br>
          <p> ${product.description}</p><br><br>
          <sec:authorize access="hasRole('ROLE_USER')">
    
          <a href="${pageContext.servletContext.contextPath}/viewcart?id=${product.id}" class="btn btn-info"><b> ADDTOCART </b></a>
          </div>
          </sec:authorize>
           </div>
         
   </body>
</html>
		