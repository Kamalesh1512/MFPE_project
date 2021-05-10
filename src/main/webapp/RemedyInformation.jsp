<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>RemedyInformation</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body>
	<div align="left">
		<h2>User remedies</h2>
		<div style="text-align: left">

			<table border="1" class="t1">
				<tr>
					<th>Remedy No</th>

					<th>User Id</th>
					<th>PC Number</th>
					<th>Contact Number</th>
					<th>Category</th>
					<th>Statement</th>

					<th>Assign To Support Analyst</th>
				</tr>
				<c:forEach items="${list}" var="userremedy">
					<tr>
						<td>${userremedy.remedyId}</td>
						<td>${userremedy.user.id}</td>
						<td>${userremedy.pcNumber}</td>
						<td>${userremedy.contactNumber}</td>
						<td>${userremedy.category}</td>
						<td>${userremedy. statement}</td>

					</tr>
				</c:forEach>



			</table>

		</div>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
		rd.include(request, response);
		%>
	</div>
</body>
</html>