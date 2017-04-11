<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">
.errorblock {
 
 
 padding:20px;
 margin: 0px;
}
.logoutblock {
 

 padding: 20px;
 margin: 0px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse" style="background-color:#1E90FF;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home" style="background-color:#1E90FF;" class="glyphicon glyphicon-home"> HOME</a></li>
      
    </ul>
  </div>
</nav>
<div class="container">
  <div class="errorblock">
<c:if test="${error=='true'}">
   Invalid Username or Password
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
<form role="form" action="j_spring_security_check" method="post" commandName="User" >
  <div class="form-group">
    <label for="username">UserName:</label>
    <input type="text"  name="username"   placeholder="Enter User Name" />
  </div>
  <div class="form-group">
    <label for="password">Password:</label>
    <input type="password"  name="password" placeholder="Enter Password" /> 
  </div>
  
  <button type="submit"  class="btn btn-default" >Submit</button>
</form>
</div>
</body>
</html> 