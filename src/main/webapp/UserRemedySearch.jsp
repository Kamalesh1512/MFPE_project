<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>User Remedy List</title>
<link rel="stylesheet" type="text/css" href="/style.css" />

<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="header">
		<div align="center">
			<h1></h1>

			<form th:action="@{/search}" method="get">
				<input type="text" name="keyword" id="keyword" size="50"
					th:value="${keyword}" required /> &nbsp; <input type="submit"
					value="Search" /> &nbsp;
			</form>
		</div>

	</div>
	<div class="row mainsection">
		<div class="col-sm">
			<div align="center">
				<c:set var="income" scope="request" value="${sa}" />
				<span class="text-info" style="font-size: 1.5rem;">${title}</span>

				<table class="table table-striped table-hover">
					<thead class="thead-dark">
						<tr>
							<c:forEach items="${headersList}" var="t">
								<th>${t}</th>

							</c:forEach>

						</tr>
					</thead>



					<c:choose>

						<c:when test="${income==2}">
							<c:forEach items="${ListofRemedies}" var="userremedy">
								<tr>
									<td>${userremedy.remedyId}</td>
									<td>${userremedy.user.id}</td>
									<td>${userremedy.pcNumber}</td>
									<td>${userremedy.contactNumber}</td>
									<td>${userremedy.category}</td>
									<td>${userremedy.statement}</td>
									<td>${userremedy.status}</td>

								</tr>
								<h>${message}</h>
							</c:forEach>

						</c:when>
						
					</c:choose>



				</table>


			</div>
		</div>
	</div>
	<%
	RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
	rd.include(request, response);
	%>

</body>
</html>