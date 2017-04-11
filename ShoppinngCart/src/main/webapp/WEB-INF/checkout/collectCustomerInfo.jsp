<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>


<nav class="navbar navbar-inverse" style="background-color:#1E90FF;">
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
  
  <div class="container-fluid">
   
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href='<x:url value="j_spring_security_logout"/>'  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out"> Logout</a></li>
    </ul>
  </div>
</nav>

<center><h2>Customer Details</h2></center>
   <form:form commandName="user" class="form-horizontal">
       <center><table class="table table-bordered" >

		   <tr><td><form:label path="username">Name:</form:label></td>
               <td><form:input path="username" value="${user.username}"/></td>
            </tr>             
           <tr><td><form:label path="mailid">Email:</form:label></td>
               <td><form:input path="mailid" value="${user.mailid}"/></td>
           </tr>
	           <tr><td><form:label path="phone">Phone :</form:label></td>
	               <td><form:input path="phone" value="${user.phone}"/></td>
	           </tr>           
	          
       </table></center>
       
       <br>
       <h1><center>Billing Address</center></h1>
       <table class="table table-bordered" >
           <center>
           <tr><td><form:label path="apartmentNumber">ApartmentNumber:</form:label></td>
               <td><form:input path="apartmentNumber" value="${user.apartmentNumber}"/></td>
           </tr>
           	   <tr><td><form:label path="streetName">StreetName:</form:label></td>
               <td><form:input path="streetName" value="${user.streetName}"/></td>
            </tr>             
           
           <tr><td><form:label path="city">City :</form:label></td>
               <td><form:input path="city" value="${user.city}"/></td>
           </tr>   
           
           <tr><td><form:label path="state">State:</form:label></td>
               <td><form:input path="state" value="${user.state}"/></td>
            </tr>             
           <tr><td><form:label path="country">Country:</form:label></td>
               <td><form:input path="country" value="${user.country}"/></td>
           </tr>
           <tr><td><form:label path="zipCode">ZipCode :</form:label></td>
               <td><form:input path="zipCode" value="${user.zipCode}"/></td>
           </tr>                              
                
         <tr><td><input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" /> 
          <button class="btn btn-default" name="_eventId_cancel">Cancel</button> </td></tr>
                                  
          </center>
       </table>
       </form:form>	
   
   
</body>
</html>


        
