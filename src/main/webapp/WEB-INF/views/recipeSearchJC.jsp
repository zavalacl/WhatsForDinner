<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja Search</title>
</head>

<body>

	<h1>Search now, Ninja!</h1>

	<form name="ingredientsFromUser" action="list" method="GET">
		<br>Enter an ingredient you want to use: <br> <input
			type="text" name="food"> <br> <input type="submit"
			value="Add">
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