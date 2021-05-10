<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>
<body>

	<c:set var="income" scope="request" value="${sa}" />
	<%
	String userid = (String) session.getAttribute("name");
	if (userid == null) {
		response.sendRedirect("/admin/");
	}
	%>

	<div class="container-fluid">
		<div class="row mainheader">
			<div class="col-sm text-nowrap">

				<span class="logo">Remedy Acknowledgement</span>
			</div>

			<div class="col-sm">

				<span class="userloginmessage">Welcome , <%=userid%></span>
				<div align="right">
					<div class="btn-group dropright" style="margin-left: 10px;">
						<button type="button" class="btn  dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span style="color: white;"><img class="rounded-circle"
								alt="profile" src="/images/profile.png" width="30" height="30"></span>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="remedyinfo">Assign Remedies</a> <a
								class="dropdown-item" href="/remediesList">RemedyLists</a> <a
								class="dropdown-item" href="adminLogout">Logout</a>

						</div>
					</div>
				</div>

			</div>
		</div>



	</div>
	<span class="text-success">${message}</span>
	<div class="row mainsection">
		<div class="col-sm">
			<div align="center">
				<c:set var="income" scope="request" value="${sa}" />
				<span class="text-info" style="font-size: 1.5rem;">${title}</span>
				<form:form action="assigntoanalyst" method="post"
					modelAttribute="assigning">

					<table class="table table-striped table-hover">
						<thead class="thead-dark">
							<tr>
								<c:forEach items="${headersList}" var="t">
									<th>${t}</th>

								</c:forEach>

							</tr>
						</thead>

						<c:choose>


							<c:when test="${income==1}">
								<c:forEach items="${list}" var="userremedy">
									<tr>
										<td>${userremedy.remedyId}</td>
										<td>${userremedy.user.id}</td>
										<td>${userremedy.pcNumber}</td>
										<td>${userremedy.contactNumber}</td>
										<td>${userremedy.category}</td>
										<td>${userremedy.statement}</td>
										<td><select name="assignTo">
												<option>Select</option>
												<c:forEach items="${salist}" var="sa">

													<option>${sa.analystId}</option>

												</c:forEach>

										</select></td>
										<td><select name="status">

												<option>select</option>
												<option value="open">Open</option>
												<option value="close">Close</option>
										</select></td>
									</tr>

								</c:forEach>
								<tr>
									<td><button class="btn btn-success">Assign</button></td>
								</tr>
							</c:when>



						</c:choose>


					</table>

				</form:form>
			</div>
		</div>
	</div>

	<script src="validators.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
</body>
</html>





