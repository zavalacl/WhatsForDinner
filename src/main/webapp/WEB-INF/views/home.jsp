<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.Ingredients"%>
<%@page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja</title>
</head>

<body>

	<h1>Welcome to the Dinner Ninja App</h1>

	<form name="login" action="login" onSubmit="return val()" method="GET">
		<br>Email:<input type="text" name="email"> <br>Password:<input
			type="password" name="pwd1"> <br>Re-Enter Password:<input
			type="password" name="pwd2"> <br> <input type="submit"
			value="submit">
	</form>


	<form name="ingredients" action="list" method="GET">
		<br>Enter an ingredient you want to use: <br>
		<input type="text" name="food"> <br> <input type="submit"
			value="Add">
	</form>

	<p>
		Ingredients:
		<c:forEach items="${ing.display() }" var="item">
			<li>${item}</li>
		</c:forEach>
	</p>

	<script type="text/javascript">
		
	function val() {
			var email = document.forms["login"]["email"].value;
			var pwd1 = document.forms["login"]["pass"].value;
			if (validateEmail(em) == false) {
				alert("Invalid Email");
				return false;
			}
			if (form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
				if (form.pwd1.value.length < 6) {
					alert("Error: Password must contain at least six characters!");
					form.pwd1.focus();
					return false;
				}
				re = /[0-9]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one number (0-9)!");
					form.pwd1.focus();
					return false;
				}
				re = /[a-z]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one lowercase letter (a-z)!");
					form.pwd1.focus();
					return false;
				}
				re = /[A-Z]/;
				if (!re.test(form.pwd1.value)) {
					alert("Error: password must contain at least one uppercase letter (A-Z)!");
					form.pwd1.focus();
					return false;
				}
			} else {
				alert("Error: Please check that you've entered and confirmed your password!");
				form.pwd1.focus();
				return false;
			}

			alert("You entered a valid password: " + form.pwd1.value)
			{
				return true;
			}

		}
		function validateEmail(x) {
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(x);
		}
	</script>

	<p>
		Here are the the recipes that match your search:

		<br> ${WhatIsTheLabel0} 
		<br> ${WhatIsTheLabel1} 
		<br> ${WhatIsTheLabel2}
	</p>


</body>
</html>