<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta Name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
        <li class="active"><a href="./home"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home">  HOME</a></li>
           </ul>
            <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
     <ul class="nav navbar-nav navbar-right" >
    
	   <li class="active">   <a href="logout"  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out">LOGOUT</a><li>
	
      </div><!-- /.container-fluid -->
</nav>
<br><br>
	<h2>Edit Product</h2>
  <form:form  modelAttribute="Product" method="post" action="update" enctype="multipart/form-data">
   <table class="table table-bordered" >
   
   <form:hidden path="id" value="${product.id}"/>
      <tr><td><form:label path="Name">Product Name :</form:label></td>
               <td><form:input path="Name" value="${product.name}"/></td>
           </tr>
               <tr><td><form:label path="Price">Product Price :</form:label></td>
               <td><form:input path="Price" value="${product.price}"/></td>
           </tr>
           <tr><td><form:label path="Description">Description :</form:label></td>
               <td><form:input path="Description" value="${product.description}"/></td>
           </tr>
                          <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty" value="${product.warranty}"/></td>
           </tr>
            
           <tr><td><form:label path="img">Product Image :</form:label></td>
               <td><form:input path="img" type="file" />
               <font color="red"><form:errors path="img"></form:errors></font></td><tr>
               <tr><td></td>
               <td><input type="submit" value="submit" class="btn-success"/></td>
           </tr>
           </table>
                      
  </form:form>
  <jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>
