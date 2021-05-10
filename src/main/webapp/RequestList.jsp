<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>RemediesListInAdmin</title>
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

				</div>

			</div>
		</div>



	</div>
	<br>
	<center>
		<span class="text-info" style="font-size: 1.5rem;">${title}</span>
	</center>
	<br>
	<table class="table table-striped table-bordered table-sm"
		cellspacing="0" width="100%">
		<%
		int count = 0;
		%>
		<thead>
			<tr>
				<th class="th-sm">S.No</th>
				<th class="th-sm">Remedy ID</th>
				<th class="th-sm">User ID</th>
				<th class="th-sm">Contact Number</th>
				<th class="th-sm">Category</th>
				<th class="th-sm">Remedy status</th>
				<th class="th-sm">Assigned To</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="a">
				<tr>
					<td>
						<%
						count++;
						out.print(count);
						%>
					</td>
					<td>${a.remedyId}</td>
					<td>${a.user.id}</td>
					<td>${a.contactNumber}</td>
					<td>${a.category}</td>
					<td>${a.status }</td>
					<td>${a.assignTo }</td>
					<td><a style="color: white;"
						href="editCustomer?id=${a.remedyId}"> </a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<br>

	<nav aria-label="...">
		<ul class="pagination">
			<li class="page-item disabled"><a class="page-link" href="#"
				tabindex="-1">Previous</a></li>
			<li class="page-item"><a class="page-link" href="/remediesList">1</a></li>

			<li class="page-item disabled"><a class="page-link" href="#">Next</a>
			</li>
		</ul>
	</nav>






</body>
</html>
<script type="text/javascript">
	$(document).ready(function() {
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>