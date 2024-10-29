<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Welcome to Spring Web MVC project</title>
</head>
<body>
	<from:from action="processForm" modelAttribute="student">
		<table>
			<tr>
				<td>First Name</td>
				<td><form:input path="firstName"/> 
				<form:errors path="firstName">
				</form:errors></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastName"/> </td>
			</tr>
			<tr>
				<td>Country</td>
				<td><form:select path="country">
				<form:options items="${student.countryOptions}"/>
				</form:select> </td>
			</tr>
			<tr>
				<td>Favorite Language</td>
				<td><form:select path="favoriteLanguage">
				<form:options items="${student.favoriteLanguageOptions}"/>
				</form:select> </td>
			</tr>
			<tr>
				<td>Operating System</td>
				<td><form:select path="operatingSystems">
				<form:options items="${student.operatingSystemOptions}"/>
				</form:select> </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit" /></td>
			</tr>
		</table>
	</from:from>
</body>
</html>