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
		First Name :: <form:input type="text" path="firstName"
			name="firstName" />
		<br>
		<br>
		Last Name :: <form:input type="text" path="lastName" name="lastName" />
		<br>
		<br>
		<form:select path="country">
			<form:options items="${student.countryOptions }" />
		</form:select>
		<br>
		<br>
		
		Favourite Language
		Java<form:radiobutton path="favouriteLanguage" value="java" />
		C#<form:radiobutton path="favouriteLanguage" value="C#" />
		Node<form:radiobutton path="favouriteLanguage" value="node" />


		<br>
		<br>
		
		Operating systems
		Linux<form:checkbox path="operatingSystems" value="linux" />
		Mac OS<form:checkbox path="operatingSystems" value="macos" />
		Windows<form:checkbox path="operatingSystems" value="windows" />
		<br>
		<br>
		<input type="submit" value="go" />

	</form:form>

</body>
</html>