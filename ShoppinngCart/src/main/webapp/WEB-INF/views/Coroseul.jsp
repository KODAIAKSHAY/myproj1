<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"></html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
     
      width:40%;
     max-height:300;
     
      margin: auto;
  }
 
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/images/oneplus3.jpg" />"/> 
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/iphone5.jpg" />"/>
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/pixel.jpg" />"/>
      </div>

      <div class="item">
         <img src="<c:url value="/resources/images/lenovo.jpg" />"/>
      </div>
    </div>
<br><br><br><br><br><br><br>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>  
      <div class="container">
  <br>
  <div class="row">
      
      
 				<sec:authorize access="hasRole('ROLE_ADMIN')">
      
      <div class="col-md-3">
      <div class="thumbnail">
          <img src="<c:url value="/resources/images/samsung.jpg" />" alt="samsung" style="width:225;max-height:300;"/>
          
        </a>
      </div>
    </div>
       
      
		    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="<c:url value="/resources/images/oneplus3.jpg" />" alt="oneplus3" style="width:225; max-height:300;"/>
          
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
         <img src="<c:url value="/resources/images/micromax.jpg" />" alt="micromax" style="width:225; max-height:300;"/>
          
        </a>
      </div>
    </div>
     <div class="col-md-3">
      <div class="thumbnail">
          <img src="<c:url value="/resources/images/pixel.jpg" />" alt="pixel" style="width:225;max-height:300;"/>
          
        </a>
      </div>
    </div>
  </div>
</div>
</sec:authorize>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
