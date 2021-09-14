<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student" method="post">
		First Name :: <form:input type="text" path="firstName" name="firstName" />
		<br><br>
		Last Name :: <form:input type="text" path="lastName" name="lastName" />
		<br><br>
		<form:select path="country">
		<form:options items="${student.countryOptions }"/>
		</form:select>
		<input type="submit" value="go" />
	</form:form>

</body>
</html>