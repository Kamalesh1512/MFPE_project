<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>RemedyInformation</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body>
	${message}
	<div class="row mainsection">
		<div class="col-sm">
			<div align="center">

				<span class="text-info" style="font-size: 1.5rem;">${title}</span>

				<table class="table table-striped table-hover">


					<thead class="thead-dark">
						<tr>
							<c:forEach items="${headerList}" var="t">
								<th>${t}</th>
							</c:forEach>
						</tr>
					</thead>


					<c:forEach items="${list}" var="userremedy">
						<tr>
							<td><form action="/updateStatus" method="get">
									<input id="status" name="status" type="submit"
										value="${userremedy.getRemedyId()}" required><br>Close
									Remedy
								</form></td>
							<td>${userremedy.getCategory()}</td>
							<td>${userremedy.getStatement()}</td>
							<td>${userremedy.getStatus()}</td>
							<td><form action="/request" method="get">
									<input id="name" name="name" type="submit"
										value="${userremedy.getUser().getId()}" required>
									&nbsp;
								</form></td>

						</tr>
					



					</c:forEach>



				</table>

			</div>
		</div>
	</div>

	<%
	RequestDispatcher rd = request.getRequestDispatcher("SupportAnalystHome.jsp");
	rd.include(request, response);
	%>

</body>
</html>