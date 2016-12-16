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
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

 <div class="header"></div>
 
 <div class="logo">
   <img src='<c:url value="resources/images/DinnerNinjaLogo.png"/>' />
 </div>

	<div class="navButtons">
		<a class="active" href="recipeSearchJC"> SEARCH </a> <a
			href="cookbook"> COOKBOOK </a> <a href="aboutUs"> NINJAS </a> <a
			href="logout"> LOGOUT </a>
	</div>

	<script>
		function formSubmit(which) {
			document.getElementById(which).submit();
		}
	</script>

	<div class="mainBody">

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
		<c:forEach items="${ing.display()}" var="item">
			<ul>
				<li>${item}<a
					href="<c:url value='/deleteFood?item=${item }' />"> X</a></li>
			</ul>
		</c:forEach>

		<a href="<c:url value='/deleteAll' />">Clear Search Entirely</a>

		<div id="content">

			<c:forEach items="${recipeList}" var="rec" varStatus="count">
				<div class="recipe"
					onclick="formSubmit('viewSelectedRecipe${count.index}')">
					<div class="image">
						<img src="${rec.image}">
						<div class="name">
							<h3>${rec.label}</h3>
						</div>
					</div>
				</div>
			</c:forEach>

			<!-- Recipe Start -->
			<!-- 			<div class="recipe">
				<div class="image">
					<img src="http://data3.whicdn.com/images/60675612/large.jpg">
					<div class="likes">
						<i class="fa fa-heart-o lv"></i>
					</div>
					<div class="name">
						<h3>Banana Walnut Muffin Pancakes</h3>
					</div>
				</div>
				<ul class="media">
					<li><i class="fa fa-clock-o"></i> 25 Minutes</li>
					<li><i class="fa fa-leaf"></i> 270 Calories</li>
					<li><i class="fa fa-cutlery"></i> 2 People</li>
				</ul>
			</div>
 -->
			<!-- Recipe End -->

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
	</div>
</body>
</html>