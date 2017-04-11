<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body{

    padding:0px;
}

#login-dp{
    min-width: 250px;
    padding: 14px 14px 0;
    overflow:hidden;
    background-color:rgba(255,255,255,.8);
}
#login-dp .help-block{
    font-size:12px    
}
#login-dp .bottom{
    background-color:rgba(255,255,255,.8);
    border-top:1px solid #ddd;
    clear:both;
    padding:14px;
}
#login-dp .social-buttons{
    margin:12px 0    
}
#login-dp .social-buttons a{
    width: 49%;
}
#login-dp .form-group {
    margin-bottom: 10px;
}
.btn-fb{
    color: #fff;
    background-color:#3b5998;
}
.btn-fb:hover{
    color: #fff;
    background-color:#496ebc 
}
.btn-tw{
    color: #fff;
    background-color:#55acee;
}
.btn-tw:hover{
    color: #fff;
    background-color:#59b5fa;
}
@media(max-width:768px){
    #login-dp{
        background-color: inherit;
        color: #fff;
    }
    #login-dp .bottom{
        background-color: inherit;
        border-top:0 none;
    }
}
</style>
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
        <li class="active"><a href="./home"  style="background-color:#1E90FF;" class="glyphicon glyphicon-home"><b>  HOME</b></a></li>
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
      </div><!-- /.container-fluid -->
</nav>



			<div class="container">
				<form:form commandName="UserDetails" method="post" action="storeUser">
					<div class="form-group">
						<label for="username">UserName:</label>
						<form:errors path="username" cssStyle="color: #ff0000" />
						<form:input path="username" id="username" class="form-Control" />
					</div>

					<div class="form-group">
						<label for="password">Password:</label> 
						<form:errors path="password" cssStyle="color: #ff0000" />
						<form:input type="password" path="password" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="confirmpassword">Confirm Password:</label>
						<form:errors path="confirmpassword" cssStyle="color: #ff0000" />
					
						<form:input type="password" path="confirmpassword" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="mailid">Email:</label>
						<form:errors path="mailid" cssStyle="color: #ff0000" />
						<form:input type="mailid" pattern="[^ @]*@[^ @]*" path="mailid" id="mailid" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="phone">Mobile number:</label>
						<form:errors path="phone" cssStyle="color: #ff0000" />
						<form:input path="phone" id="phone" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="apartmentNumber">Apartment number:</label>
						<form:errors path="apartmentNumber" cssStyle="color: #ff0000" />
						<form:input path="apartmentNumber" id="apartmentNumber" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="streetName">Street name:</label>
						<form:errors path="streetName" cssStyle="color: #ff0000" />
						<form:input path="streetName" id="streetName" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="city">City:</label>
						<form:errors path="city" cssStyle="color: #ff0000" />
						<form:input path="city" id="city" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="state">State:</label>
						<form:errors path="state" cssStyle="color: #ff0000" />
						<form:input path="state" id="state" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="country">country:</label>
						<form:errors path="country" cssStyle="color: #ff0000" />
						<form:input path="country" id="country" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="zipCode">zipCode:</label>
						<form:errors path="zipCode" cssStyle="color: #ff0000" />
						<form:input path="zipCode" id="zipCode" class="form-Control" />
					</div>
					
					
						
						
										
			<button type="submit" class="btn btn-default">Submit</button>
			</form:form>			
			</div>
	
	
		</body>
</html>