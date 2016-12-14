<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<title>Dinner Ninja Search</title>
<style>
.hideMe {
	display: none;
}
</style>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/DinnerNinjaStylin.css" />

</head>

<body>

	<script>
		function formSubmit(which) {
			document.getElementById(which).submit();
		}
	</script>

	<h1>Search now, Ninja!</h1>

	<form name="inputFromUser" action="displayResultList" method="GET">
		<br>Enter an ingredient you want to use: <br> <input
			type="text" name="food"> <br> <input type="submit"
			name="addIngredientToSearch" value="Add Ingredients">

		<p>
			<strong>Filter results (optional):</strong> <br> <input
				type="checkbox" name="health" value="alcohol-free">
			Alcohol-free <br> <input type="checkbox" name="health"
				value="peanut-free"> Peanut-free <br> <input
				type="checkbox" name="health" value="sugar-conscious">
			Sugar-conscious <br> <input type="checkbox" name="health"
				value="tree-nut-free"> Tree-nut-free <br> <input
				type="checkbox" name="health" value="vegan"> Vegan <br>
			<input type="checkbox" name="health" value="vegetarian">
			Vegetarian <br> <input type="submit" name="addFiltersToSearch"
				value="Set Filters">
		</p>
	</form>

	<br> Ingredients Selected:
	<table>
		<tbody>
			<c:forEach items="${ing.display()}" var="item">
				<tr>
					<td>${item}<a
						href="<c:url value='/deleteFood?item=${item }' />">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a href="<c:url value='/deleteAll' />">Clear Search Entirely</a>

	<div id="content">
		<c:forEach items="${recipeList}" var="rec" varStatus="count">
			<div class="recipe"
				onclick="formSubmit('viewSelectedRecipe${count.index}')">

				<div class="image">
					<img src="${rec.image}">
				</div>

				<div class="name">
					<h3>${rec.label}</h3>
				</div>

				<!-- 		${rec.source}  -->

				<form id="viewSelectedRecipe${count.index}"
					action="addSelectedRecipe" method="get">
					<input type="hidden" name="image" value="${rec.image}" /> <input
						type="hidden" name="label" value="${rec.label}" /> <input
						type="hidden" name="source" value="${rec.source}" /> <input
						type="hidden" name="url" value="${rec.url}" />

					<!-- this forEach loop lists the ingredients from a recipe -->
					<c:forEach items="${rec.ingredients}" var="separatedIngredients">
						<input class="hideMe" name="ingredients"
							value="${separatedIngredients}" />
					</c:forEach>
					<!-- end of ingredients loop -->

				</form>
			</div>
		</c:forEach>
	</div>
	<!-- end of results loop -->

	<form name="logout" action="logout" method="GET">
		<br> <input type="submit" value="Logout">
	</form>

</body>
</html>