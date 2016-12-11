<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe Ingredients</title>
</head>
<body>

<h1>${recipeLabel}</h1>
<img src="${recipeImage}">
<h3><a href="${recipeURL}">Recipe Instructions</a></h3>

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
					<td><input type="checkbox" name="missingIngredient" value="${ingredient}"></td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="I don't have this item">
	</form>
</body>
</html>