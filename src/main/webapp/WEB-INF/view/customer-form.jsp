<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error{color: red;}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="customer" method="post">
		First Name :: <form:input type="text" path="firstname"
			name="firstname" />
		<br>
		<br>
		Last Name :: <form:input type="text" path="lastname" name="lastname" />
		<form:errors path="lastname" cssClass="error"></form:errors>
		
		<br>
		<br>
		<input type="submit" value="go" />

	</form:form>

</body>
</html>