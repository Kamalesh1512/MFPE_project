<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>


<div class="container-fluid">
<div class="row mainheader">
<div class="col-sm text-nowrap">

<span class="logo">Remedy Acknowledgement</span>
</div>

<div class="col-sm">

<nav class="navbar navbar-expand-lg nav-default  navbarmenu">
  
  <button class="navbar-toggler navbutton" type="button" data-toggle="collapse" data-target="#menus" aria-controls="menus" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
  </button>
  <div class="collapse navbar-collapse" id="menus">
   <div class="navbar-nav">
    
      <a class="nav-item nav-link active"  href="adminlogin">Admin <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="supportanalystlogin">Support Analyst</a>
      <a class="nav-item nav-link" href="userlogin">User</a>
    </div>
  </div>
</nav>

</div>



</div>
<div class="row mainsection">
 <div class="col-sm">
 <span class="text-success">${message}</span>
<div align="center">   
<div class="card" style="width: 18rem;margin-top: 30px;border-radius: 10px;">
  
  <div class="card-body">
    <h5 class="card-title">User Login</h5>
   <form:form action="userloginverify" onsubmit="return loginvalidate()" method="post" modelAttribute="userlogin">
  
    <div class="form-row">
    <div class="form-group col-sm-6">
    <form:label path="userId">User Name</form:label>
    <form:input path="userId" id="userId" name="userId"/>
    </div>
    </div>
  
  <div class="form-row">
  <div class="form-group col-sm-6">
    <form:label path="password">Password</form:label>
    <form:password path="password" id="password" name="password"/>
    </div>
    </div>
  
  
     <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   
   <button class="btn btn-primary btn-lg">Login</button>
   </div>
   
   </div>
   
   </form:form> 
   

<span class="signup">Don't  have an Account?</span><a href="user" class="signupbtn">Register</a>
<li class="l"><a href="Uforgotuid">ForgotUserid</a></li>
<li class="l"><a href="Uforgotpswd">Forgot Password</a></li>
  </div>
</div>
</div>
</div>
</div>
</div>
<script src="validators.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>


    


    