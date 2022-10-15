<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Welcome to the luv2code company</title>
	</head>
	
	<body>
		<h2>luv2code Company Home Page - Viet Dang</h2>
		<hr>
		<p>
		Welcome to the luv2code company home page.
		</p>
		<!--  Add a logout button  -->
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="logout"/>
		</form:form>
	</body>
</html>