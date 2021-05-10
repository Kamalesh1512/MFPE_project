<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot User id</title>

<link rel="stylesheet" type="text/css" href="/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="/style1.css">

<script type="text/javascript">
	function validate() {
		var qsn1 = document.getElementById("qstn1").value;
		var answr1 = document.getElementById("ans1").value;
		var qsn2 = document.getElementById("qstn2").value;
		var answr2 = document.getElementById("ans2").value;
		var qsn3 = document.getElementById("qstn3").value;
		var answr3 = document.getElementById("ans3").value;

		var phn = document.getElementById("phno").value;
		if (qsn1 == "") {
			document.getElementById("qstn1").style.borderColor = "red";
			alert("please select the first secret question");
			return false;
		} else if (answr == "") {
			document.getElementById("ans").style.borderColor = "red";
			alert("please update first answer field");
			return false;
		} else if (qsn2 == "") {
			document.getElementById("qstn2").style.borderColor = "red";
			alert("please select the second secret question");
			return false;
		} else if (answr2 == "") {
			document.getElementById("ans2").style.borderColor = "red";
			alert("please update second answer field");
			return false;
		}

		else if (qsn3 == "") {
			document.getElementById("qstn3").style.borderColor = "red";
			alert("please select the third secret question");
			return false;
		} else if (answr3 == "") {
			document.getElementById("ans3").style.borderColor = "red";
			alert("please update first answer field");
			return false;
		}

		else if (phn == "") {
			document.getElementById("phn").style.borderColor = "red";
			alert("please update contact number field");
			return false;

		}
	}
</script>

</head>
<body>
	<div class="header">
		<h1>Remedy Acknowledgement</h1>
	</div>
	<h2>Forgot Userid??</h2>
	<div class="formdata3">
		<div align="center">
			<form:form onsubmit="return validate()" action="/Uforgotuid1"
				method="post" modelAttribute="name">
				<table>
					<tr>
						<td>Contact</td>
						<td><form:input path="phno" id="phno" type="text" />
					</tr>
					<tr>
						<td>Secret Question 1:</td>
						<td><form:select path="qstn1" id="qstn1" class="select-box">
								<option selected="selected" value="In which month you born?">In
									which month you born?</option>
								<option value="What is your favorite movie?">What is
									your favorite movie?</option>
								<option value="What is your pet name?">What is your pet
									name?</option>
							</form:select></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><form:input path="ans1"
								id="ans1" placeholder="Answer" width="170px" /></td>
					</tr>
					<tr>
						<td>Secret Question 2:</td>
						<td><form:select path="qstn2" id="qstn2" class="select-box">
								<option selected="selected"
									value="What is your favourite place?">What is your
									favourite place?</option>
								<option value="What is your parent's anniversary?">What
									is your parent's anniversary?</option>
								<option value="What is your highest education?">What is
									your highest education?</option>
							</form:select></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><form:input path="ans2"
								id="ans2" placeholder="Answer" width="170px" /></td>
					</tr>
					<tr>
						<td>Secret Question 3:</td>
						<td><form:select path="qstn3" id="qstn3" class="select-box">
								<option selected="selected"
									value="What is your favourite comic?">What is your
									favourite comic?</option>
								<option value="What is your home town?">What is your
									home town?</option>
								<option value="What is your favorite color?">What is
									your favorite color?</option>
							</form:select></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><form:input path="ans3"
								id="ans3" placeholder="Answer" width="170px" /></td>
					</tr>

				</table>
				<input type="submit" value="submit" class="formsubmitbutton" />

			</form:form>
			<br>
			<br> <span class="text-success">${message}</span> <br>
			<br> Want to login?<a href="userlogin">Click here</a>

		</div>
	</div>


</body>
</html>

