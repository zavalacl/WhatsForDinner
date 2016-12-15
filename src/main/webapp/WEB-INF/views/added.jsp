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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
		rel="stylesheet" type="text/css">

</head>

<body>

	<div class="header"></div>

	<div class="buttons">
		<a href="recipeSearchJC"> SEARCH </a> <a
			href="cookbook"> COOKBOOK </a> <a href="aboutUs"> NINJAS </a> <a
			href="logout"> LOGOUT </a>
	</div>

	<div class="backgroundImage">
		<img src='<c:url value="resources/images/parchment.jpg"/>' />
	</div>

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