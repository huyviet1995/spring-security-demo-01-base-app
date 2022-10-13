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
</head>
<body>
	<h3>
		My custom login page.
	</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		<!--  Check for error message -->
		<c:if test="${param.error != null}">
			<i>Sorry! You have entered an invalid username or password</i>
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