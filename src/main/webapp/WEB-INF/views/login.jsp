
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/yeti/bootstrap.min.css" rel="stylesheet" integrity="sha384-MEq8xmFd953gp2FVvLd8DUEvfBjGCzDjem+gmDqfyyWcaxX4BUD7TtSu1EszNTvK" crossorigin="anonymous"><link rel="stylesheet" href="main.css">
</head>
<body>
<navbar>
<small>
    <a href="/" button type="submit" class="btn btn-login float-left">Log In</a>
    <a href="register" button type="submit" class="btn btn-login float-left">Register</a></small>
</navbar>

<section class="admin-block">
<div class="container" >
	
	<h5>${firstPage }</h5>
	<br>
	<a href="tasks" class="btn btn-light btn-sm">List Tasks </a><br>
	<a href="tasks" class="btn btn-light btn-sm">Add Task </a><br>
	<a href="delete" class="btn btn-light btn-sm">Delete Task </a><br>
	<a href="tasks" class="btn btn-light btn-sm">Mark Task Complete </a><br>
	<a href="tasks" class="btn btn-light btn-sm">Quit </a><br>
	
	<br>
	
	</div>
	        
        </section>

</body>
</html>