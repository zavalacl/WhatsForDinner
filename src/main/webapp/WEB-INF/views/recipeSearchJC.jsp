<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@ page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja Search</title>
</head>

<body>

	<h1>Search now, Ninja!</h1>

	The filters are not currently working
	<form name="ingredientsFromUser" action="list" method="GET">
		<br>Enter an ingredient you want to use: 
		<br> <input type="text" name="food"> <strong>Filter results (optional):</strong> 
		<br> <input type="checkbox" name="diet" value="balanced"> Balanced
		<br> <input type="checkbox" name="diet" value="high-protein"> High protein
		<br> <input type="checkbox" name="diet" value="low-fat"> Low-fat
		<br> <input type="checkbox" name="diet" value="low-carb"> Low-carb
		<br> <input type="checkbox" name="health" value="vegan"> Vegan
		<br> <input type="checkbox" name="health" value="vegetarian"> Vegetarian
		<br> <input type="checkbox" name="health" value="sugar-conscious"> Sugar-conscious
		<br> <input type="checkbox" name="health" value="peanut-free"> Peanut-free
		<br> <input type="checkbox" name="health" value="tree-nut-free"> Tree-nut-free
		<br> <input type="checkbox" name="health" value="alcohol-free"> Alcohol-Free
		<br> 
		<br> <input type="submit" value="Add">

	</form>

	<br> Ingredients Selected:
	<table>
		<tbody>
			<c:forEach items="${ing.display()}" var="item">
				<tr>
					<td>${item}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<br> Here are the the recipes that match your search:
	
	<table border="1">
	<tr>
		<th>Label</th>
		<th>Image</th>
		<th>Source</th>
		<th>Summary</th>
		<th></th>
	</tr>
	
	<c:forEach items="${recipeList}" var="rec">
	<tr>
		<td><img src="${rec.image}" height="100px" width="100px"></td>
		<td>${rec.label}</td>
		<td>${rec.source}</td>
		<td>${rec.summary}</td>
		<td>
		<form action="addSelectedRecipe" method="get">
			<input type="hidden" name="image" value="${rec.image}" />
			<input type="hidden" name="label" value="${rec.label}" />
			<input type="hidden" name="source" value="${rec.source}" />
			<input type="hidden" name="summary" value="${rec.summary}" />
			<input type="hidden" name="ingredients" value="${rec.ingredients}" />
			<input type="submit" value="See Recipe">
		</form>
		</td>
	</tr>
	</c:forEach>
	
</table>
	
</body>
</html>