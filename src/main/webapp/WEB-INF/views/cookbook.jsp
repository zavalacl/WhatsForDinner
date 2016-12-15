<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cookbook</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
		rel="stylesheet" type="text/css">

</head>

<body>

	<div class="header"></div>

	<div class="buttons">
		<a href="recipeSearchJC"> SEARCH </a> <a
			class="active" href="cookbook"> COOKBOOK </a> <a href="aboutUs"> NINJAS </a> <a
			href="logout"> LOGOUT </a>
	</div>

	<div class="backgroundImage">
		<img src='<c:url value="resources/images/parchment.jpg"/>' />
	</div>

<body>

	<h1>My cookbook:</h1>

	<table border="1">
		<tr>
			<th>Image</th>
			<th>Label</th>
			<th>Source</th>
			<th>Recipe Url</th>
			<th>Ingredients</th>
			<th>Rating</th>
		</tr>

		<c:forEach items="${cookbook}" var="cbk">
			<tr>
				<td><img src="${cbk.recImage}" height="100px" width="100px"></td>
				<td>${cbk.recLabel}</td>
				<td>${cbk.recSource}</td>
				<td><a href="${cbk.recURL}" target="_blank">View recipe
						instructions</a></td>
				<td>${cbk.recIngredients}</td> 
				<td>Your rating: ${cbk.recRating}<c:if test="${cbk.recRating == 0}">
				<p>Not yet rated.</p></c:if>
				<form action="recRating" method="GET">
				<input type="hidden" name="cbID" value="${cbk.cbID}" />
					<select name="rating">
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select> <input type="submit" value="Submit Rating">
				</form></td>
				<td><a
					href="<c:url value='/deleteCookBook?cbID=${cbk.cbID}' />">Delete</a></td>

			</tr>
		</c:forEach>

	</table>


</body>
</html>