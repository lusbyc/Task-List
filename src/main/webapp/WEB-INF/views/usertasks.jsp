<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cosmo/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-3Ivskwia8Fui5tbQi+RW4DgTkJ8d+hW7mLe7Yk89ibmD9482VECh0WFof8kIEjwI"
	crossorigin="anonymous">
<link rel="stylesheet" href="main.css">

</head>
<body>
${tasks }

	<h1>List of Tasks by User</h1>
	<table class="table">
		<c:forEach var="p" items="${tasks}">
			<tr>
				<td>${p.taskdescription }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>