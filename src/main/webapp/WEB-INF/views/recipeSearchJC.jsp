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

	<form name="ingredientsFromUser" action="list" method="POST">
		<br>Enter an ingredient you want to use: <br> <input
			type="text" name="food"> <input type="submit" value="Add">
	</form>
	<p>
	<form name="filters" method="POST">
		<p>
			<strong>Filter results (optional):</strong> <br> 
			<input type="checkbox" name="diet" value="balanced"> Balanced<br>
			<input type="checkbox" name="diet" value="high-protein"> High protein<br> 
			<input type="checkbox" name="diet" value="low-fat"> Low-fat<br> 
			<input type="checkbox" name="diet" value="low-carb"> Low-carb<br>
			<!-- 		<input type="checkbox" name="health" value="vegan"> Vegan<br>
			<input type="checkbox" name="health" value="vegetarian"> Vegetarian<br>
			<input type="checkbox" name="health" value="sugar-conscious"> Sugar-conscious<br>
		  	<input type="checkbox" name="health" value="peanut-free"> Peanut-free<br>
		  	<input type="checkbox" name="health" value="tree-nut-free"> Tree-nut-free<br>
		  	<input type="checkbox" name="health" value="alcohol-free"> Alcohol-Free<br>   -->
		</p>
		<br> <input type="submit" value="Add Filters">

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
	<p>
		${WhatIsTheLabel0} 
		<br> -image: ${WhatIsTheImage0} 
		<br> -source: ${WhatIsTheSource0} 
		<br> -summary: ${WhatIsTheSummary0}
		<br> -ingredients: ${WhatIsTheIngredients0}
	</p>
	<p>${WhatIsTheLabel1}</p>
	<p>${WhatIsTheLabel2}</p>
	<p>${WhatIsTheLabel3}</p>
	<p>${WhatIsTheLabel4}</p>

</body>
</html>