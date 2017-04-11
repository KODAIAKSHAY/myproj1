<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
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
         
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation"  style="background-color:#1E90FF;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><b>MOBILES WORLD</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./kkk" style="background-color:#1E90FF;" class="glyphicon glyphicon-home"><b> HOME </b></a></li>
        <li><a href="viewsuppilers" style="background-color:#1E90FF;"><b> MANAGE SUPPLIER </b></a></li>
        <li><a href="viewproducts" style="background-color:#1E90FF;"><b> MANAGE PRODUCT </b></a></li>
        
        
      </ul>
           <ul class="nav navbar-nav navbar-right">
        <li>
           <a href='<x:url value="j_spring_security_logout"/>'  style="background-color:#1E90FF;" class="glyphicon glyphicon-log-out"><b> LOGOUT </b></a>
						 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br>

<h2>Add a Suppiler</h2>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addsupplier" value="addSuppiler"></c:url>
   <form:form commandName="Suppiler" method="post" action="storesuppiler">
       <table class="table table-bordered" >
           <tr><td><form:label path="supid">Suppiler Id:</form:label></td>
               <td><form:input path="supid"/>
               <font color="red"><form:errors path="supid"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="supname">Suppiler Name :</form:label></td>
               <td><form:input path="supname"/>
               <font color="red"><form:errors path="supname"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="suplocation">Suppiler Location:</form:label></td>
               <td><form:input path="suplocation"/>
               <font color="red"><form:errors path="suplocation"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="categoryid">Category Id :</form:label></td>
               <td><form:input path="categoryid"/>
               <font color="red"><form:errors path="categoryid"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="productid">Product Id :</form:label></td>
               <td><form:input path="productid"/>
               <font color="red"><form:errors path="productid"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="productname">Product Name :</form:label></td>
               <td><form:input path="productname"/>
               <font color="red"><form:errors path="productname"></form:errors></font></td>
           </tr>
             <td><input type="submit" value="addSuppiler" class="btn-success"/></td>
       </table>
   </form:form> 
   </div>
   	         <jsp:include page="footer.jsp"></jsp:include>
   	
</body>
</html>