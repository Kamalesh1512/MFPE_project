<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body>
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
					<c:forEach items="${list}" var="user">


						<tr>
							<td>${user.getUser().getFirstName() }
							<td>${user.getUser().getId()}</td>
							<td>${user.getContactNumber()}</td>
							<td>${user.getPcNumber()}</td>

						</tr>
					</c:forEach>
				</table>
				${message}
			</div>
		</div>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("SupportAnalystHome.jsp");
		rd.include(request, response);
		%>
	</div>
</body>
</html>