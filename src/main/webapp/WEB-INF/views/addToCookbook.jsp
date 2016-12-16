<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe Saved</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">

</head>

<body>

 <div class="header"></div>
 
 <div class="logo">
   <img src='<c:url value="resources/images/DinnerNinjaLogo.png"/>' />
 </div>

	<div class="navButtons">
		<a href="recipeSearchJC"> SEARCH </a> <a href="cookbook"> COOKBOOK
		</a> <a href="aboutUs"> NINJAS </a> <a href="logout"> LOGOUT </a>
	</div>

	<div class="mainBody">

		<h1>You just added the following recipe to your cookbook:</h1>

		<table border="1">
			<tr>
				<th>Image</th>
				<th>Label</th>
				<th>Source</th>
				<th>Recipe URL</th>
				<th>Ingredients</th>
			</tr>

			<tr>
				<td><img src="${recipeImage}" height="100px" width="100px"></td>
				<td>${recipeLabel}</td>
				<td>${recipeSource}</td>
				<td><a href="${recipeURL}" target="_blank">View recipe
						instructions</a></td>
				<td>${recipeIng}</td>
			</tr>
		</table>

		<form name="cookbook" action="cookbook" method="GET">
			<input type="submit" value="See my cookbook">
		</form>

	</div>
</body>
</html>