<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cosmo/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-3Ivskwia8Fui5tbQi+RW4DgTkJ8d+hW7mLe7Yk89ibmD9482VECh0WFof8kIEjwI"
	crossorigin="anonymous">
<link rel="stylesheet" href="main.css">
</head>
<body>
<table>
		<thead>
		</thead>
		<tbody>
			<form action="/adduser" method="post">
				<tr>
					<td>Name:</td>
					<td><input id="name" type="text" name="name"></td>
				</tr>
					<tr>
					<td>Email:</td>
					<td><input id="email" type="email" name="email"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input id="password" type="text"
						 name="password"></td>
				</tr>
				<tr>
					<td><input class="btn btn-primary" type="submit"
						value="Register"></td>
				</tr>
		</tbody>
	</table>

	</form>

      <small>Already Registered? <a href="/">Sign In</a></small>

	<script src="script.js"></script>



</body>
</html>

