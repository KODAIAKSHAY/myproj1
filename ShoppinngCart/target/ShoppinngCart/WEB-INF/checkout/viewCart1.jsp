<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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



     <div class="container">
        <h1>Cart Items</h1>
<div ng-app="myApp" ng-controller="customersCtrl">
 
 
 <input type="text" class="form-control" placeholder="Search" ng-model="searchBy.productName"/><br/>
 <a href="checkout" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>

                     
                
<table class="table table-hover table-bordered">
  <tr>
       <th>Product Name</th>
       <th>QTY</th>
       <th>Price</th>
       
            
  </tr>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.productName}}</td>
    <td>{{x.quantity}}</td>
    
    <td>{{x.productPrice}}</td>
    
  <td> <a href="deleteItemCart?id={{x.cartItemId}}" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon glyphicon-remove"></span>remove</a></th>
    </tr>
    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total : {{calGrandTotal() }}</th>
                        
                    </tr>
</table>
 <a href="${pageContext.servletContext.contextPath}/viewproducts" class="btn btn-success pull-right">Continue Shopping</a>
 <a href="${pageContext.servletContext.contextPath}/removeAll"class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("listone")
    .then(function (response) {$scope.names = response.data;});


$scope.calGrandTotal = function(){
    var grandTotal=0;
    

    for(var i=0; i<$scope.names.length; i++)
    {
        grandTotal+=$scope.names[i].productPrice;
    }

    return grandTotal;
};
});

</script>
</div>
</body>
</html>



