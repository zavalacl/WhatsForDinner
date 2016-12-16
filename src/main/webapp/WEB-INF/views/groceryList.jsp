<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe Ingredients</title>
<style>
.hideMe {
	display: none;
}
</style>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">

</head>

<body>

	<div class="header"></div>

	<div class="navButtons">
		<a href="recipeSearchJC"> SEARCH </a> <a href="cookbook"> COOKBOOK
		</a> <a href="aboutUs"> NINJAS </a> <a href="logout"> LOGOUT </a>
	</div>

	<div class="backgroundImage">
		<img src='<c:url value="resources/images/parchment.jpg"/>' />
	</div>

	<div class="mainBody">

		<h1>${recipeLabel}</h1>
		<img src="${recipeImage}">
		<h3>
			<a href="${recipeURL}">Recipe Instructions</a>
		</h3>
		<p>Source: ${recipeSource}</p>

		<h2>Recipe Ingredients:</h2>

		<form name="added" action="added" method="GET">
			<table border="1">
				<tr>
					<th>Ingredient</th>
					<th>I don't have this ingredient</th>
				</tr>
				<c:forEach items="${recipeIng}" var="ingredient">
					<tr>
						<td>${ingredient}</td>
						<td><input type="checkbox" name="missingIngredient"
							value="${ingredient}"></td>
					</tr>
				</c:forEach>
			</table>
			<input type="submit" value="I don't have this item">
		</form>

		<form name="addToCookbook" action="addToCookbook" method="GET">

			<input type="hidden" name="image" value="${recipeImage}" /> <input
				type="hidden" name="label" value="${recipeLabel}" /> <input
				type="hidden" name="source" value="${recipeSource}" /> <input
				type="hidden" name="url" value="${recipeURL}" />

			<c:forEach items="${recipeIng}" var="separatedIngredients">
				<input class="hideMe" name="ingredients"
					value="${separatedIngredients}" />
			</c:forEach>

			<input type="submit" value="Add this recipe to my cookbook!">

		</form>
	</div>
</body>
</html>