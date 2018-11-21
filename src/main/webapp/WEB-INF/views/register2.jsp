<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration n</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cosmo/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-3Ivskwia8Fui5tbQi+RW4DgTkJ8d+hW7mLe7Yk89ibmD9482VECh0WFof8kIEjwI"
	crossorigin="anonymous">
<link rel="stylesheet" href="main.css">
</head>
<body>

<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">New User Registration</h2>
		  	    
  <div class="form-group">
  	<form action="/adduser" method="post">
        <tr>
        <td>NAME:</td>
					<td><input id="name" type="text" name="name" class="form-control" placeholder=""></td>
				</tr>
					<tr>
					<td>EMAIL:</td>
					<td><input id="email" type="email" name="email" class="form-control" placeholder=""></td><br>
				</tr>
				<tr>
					<td>PASSWORD:</td>
					<td><input id="password" type="text"
						 name="password" class="form-control" placeholder=""></td>
				</tr>
				<tr>
					<td><input class="btn btn-login float-right" type="submit"
						value="Submit"></td>
        
      <small>Already Registered? <a href="/">Sign In</a></small>


   <!-- <button type="submit" class="btn btn-login float-right">Submit</button>   --> 
  
</form>
  
    </div>
  
  
 		</div>
		  <div class="col-md-8 banner-sec"></div></div></div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"></div>
        </section>


	<script src="script.js"></script>



</body>
</html>

<!-- 	    
	<form action="usertasks" onsubmit="return validateInfo();">
	EMAIL: <input id="email" type="text" name="email">
	PASSWORD: <input id="password" type="text" name="password">
	<input type="submit" value="Add">
	</form>
	 -->
	