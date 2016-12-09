<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Grocery List</title>
</head>
<body>

	<h1>Your Grocery List:</h1>
	<ul>
		<c:forEach var="ai" items="${addedIng}">
			<li>${ai}</li>
		</c:forEach>
	</ul>
	<iframe width="560" height="315" src="https://www.shipt.com/" frameborder="0" allowfullscreen></iframe>
</body>
</html>