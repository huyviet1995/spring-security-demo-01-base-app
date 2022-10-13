<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Custom login page</title>
	<style type="text/css">
		.failed {
			color: red;
		}
	</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<h3>
		My custom login page.
	</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		<!--  Check for error message -->
		<c:if test="${param.error != null}">
			<i class="failed">Sorry! You have entered an invalid username or password</i>
		</c:if>
		<p>
			User name: <input type="text" name="username"/>
		</p>
		<p>
			Password: <input type="password" name="password"/>
		</p>
		<input type="submit" value="Login" />
	</form:form>
	
</body>
</html>