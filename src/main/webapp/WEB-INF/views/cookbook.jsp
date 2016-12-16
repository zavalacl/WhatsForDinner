<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page session="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>

<%@ page import="java.util.*"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>My Cookbook</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cookbook.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">
	
</head>

<body>

	<div class="header"></div>

	<div class="navButtons">
		<a href="recipeSearchJC"> SEARCH </a> <a class="active"
			href="cookbook"> COOKBOOK </a> <a href="aboutUs"> NINJAS </a> <a
			href="logout"> LOGOUT </a>
	</div>

<%-- 	<div class="backgroundImage">
		<img src='<c:url value="resources/images/parchment.jpg"/>' />
	</div> --%>
<body>
	<div class="mainBody">
	<div class="imageContainer">MY COOKBOOK</div>

	<h1>My cookbook:</h1>

	<%-- <table id = "cookbook" border="1">
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
				<form name = "rate" action="recRating" method="GET">
				<input type="hidden" name="cbID" value="${cbk.cbID}" />
					<select name="rating">
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
				</select> <input type="submit" class ="ratingButton" value="Submit Rating">
				</form>
				</td>
				<td><a
					href="<c:url value='/deleteCookBook?cbID=${cbk.cbID}' />">Delete</a></td>
			</tr>
		</c:forEach>

<a href="myfile.htm"><img src="rainbow.gif" border="0"></a> 
 <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-remove"></span> Remove 
        </a>
	</table> --%>

	<div class="wrapper">

		<c:forEach items="${cookbook}" var="cbk" varStatus="cbkstat">



			<div class="floating-box">

				<div class="box">

					<div class="product">

						<a href="${cbk.recURL}"><img src="${cbk.recImage}"
							alt="${cbk.recLabel}" border="0"></a> <span class="nameCard"><a
							href="${cbk.recURL}" class="nameCard">${cbk.recLabel}</a>
							
	
						<div class="stars">
					<c:choose>
						<c:when test="${cbk.recRating == 5}">
							<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating" checked="checked"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating" /> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating" /> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" /> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating" /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
							</c:when>
							<c:when test="${cbk.recRating == 4}">
							<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating" checked="checked" /> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating" /> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" /> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating" /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
							</c:when>
							<c:when test="${cbk.recRating == 3}">
							<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating" /> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating"  checked="checked"/> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" /> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating" /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
							</c:when>
							<c:when test="${cbk.recRating == 2}">
							<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating"  /> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating" /> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" checked="checked"/> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating" /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
							</c:when>
							<c:when test="${cbk.recRating == 1}">
							<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating"/> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating" /> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" /> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating"  checked="checked"  /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
							</c:when>
							<c:otherwise>
        					<form action="recRating" method="GET">

								<input type="hidden" name="cbID" value="${cbk.cbID}" /> <input
									class="star star-5" id="star-5-${cbkstat.index}" value="5"
									type="radio" name="rating"/> <label class="star star-5"
									for="star-5-${cbkstat.index}"></label> <input
									class="star star-4" id="star-4-${cbkstat.index}" value="4"
									type="radio" name="rating"/> <label class="star star-4"
									for="star-4-${cbkstat.index}"></label> <input
									class="star star-3" id="star-3-${cbkstat.index}" value="3"
									type="radio" name="rating" /> <label class="star star-3"
									for="star-3-${cbkstat.index}"></label> <input
									class="star star-2" id="star-2-${cbkstat.index}" value="2"
									type="radio" name="rating" /> <label class="star star-2"
									for="star-2-${cbkstat.index}"></label> <input
									class="star star-1" id="star-1-${cbkstat.index}" value="1"
									type="radio" name="rating" /> <label class="star star-1"
									for="star-1-${cbkstat.index}"></label> <input type="submit"
									class="button" value="Rate!">

							</form>
  						    </c:otherwise>
							</c:choose>
						</div>


						
						<a class="button1"
							href="<c:url value='/deleteCookBook?cbID=${cbk.cbID}' />">Delete
							Recipe</a>



					</div>



				</div>

			</div>

		</c:forEach>

	</div>
</div>
</body>

</html>