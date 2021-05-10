<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


	<div class="container-fluid">
		<div class="row mainheader">
			<div class="col-sm text-nowrap">

				<span class="logo">Remedy Acknowledgement</span>
			</div>

			<div class="col-sm">

				<nav class="navbar navbar-expand-lg nav-default  navbarmenu">

					<button class="navbar-toggler navbutton" type="button"
						data-toggle="collapse" data-target="#menus" aria-controls="menus"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>

					</button>
					<div class="collapse navbar-collapse" id="menus">
						<div class="navbar-nav">

							<a class="nav-item nav-link active" href="adminlogin">Admin <span
								class="sr-only">(current)</span></a> <a class="nav-item nav-link"
								href="supportanalystlogin">Support Analyst</a> <a
								class="nav-item nav-link" href="userlogin">User</a>
						</div>
					</div>
				</nav>

			</div>



		</div>
		<div class="row mainsection">
			<div class="col-sm">
				<span class="text-success">${message}</span>
				<div align="center">
					<div class="card"
						style="width: 29rem; margin-top: 30px; border-radius: 10px;">

						<div class="card-body">
							<h5 class="card-title">SupportAnalyst Registration</h5>
							<form:form action="supportanalystreg" method="post"
								modelAttribute="supportanalyst"
								onsubmit="return adminvalidation()">
								<div class="form-row">
									<div class="form-group col-md-6">
										<form:label path="firstName">First Name :</form:label>

										<form:input path="firstName" class="form-control input-sm"
											name="firstName" id="firstName" />

									</div>


									<div class="form-group col-md-6">

										<form:label path="lastName">Last Name :</form:label>

										<form:input path="lastName" class="form-control input-sm"
											name="lastName" id="lastName" />

									</div>
								</div>

								<div class="form-row">

									<div class="form-group col-md-6">
										<form:label path="analystId">User Name :</form:label>

										<form:input path="analystId" class="form-control input-sm"
											id="adminId" name="adminId" />

									</div>


									<div class="form-group col-md-6">

										<form:label path="password">Password :</form:label>

										<form:password path="password" class="form-control input-sm"
											id="password" name="password" />

									</div>


								</div>

								<div class="form-row">

									<div class="form-group col-md-6">
										<form:label path="age">Age :</form:label>

										<form:input path="age" class="form-control input-sm" id="age"
											name="age" />

									</div>


									<div class="form-group col-md-6">

										<form:label path="gender">Gender :</form:label>
										<div>
											<form:radiobutton path="gender" value="female" id="gender" />
											Female
											<form:radiobutton path="gender" value="male" id="gender" />
											Male

										</div>
									</div>


								</div>

								<div class="form-row">

									<div class="form-group col-md-6">
										<form:label path="email">Email :</form:label>

										<form:input path="email" class="form-control input-sm"
											id="email" name="email" />

									</div>


									<div class="form-group col-md-6">

										<form:label path="contactNumber">Mobile Number :</form:label>

										<form:password path="contactNumber"
											class="form-control input-sm" id="contactNumber"
											name="contactNumber" />

									</div>


								</div>
								<div class="form-group">

									<div>

										<form:label path="supportLevel">Support Level</form:label>
									</div>
									<div>
										<form:select path="supportLevel" id="supportLevel"
											name="supportLevel" class="form-controll">
											<option>select</option>
											<option value="level-1">level-1</option>
											<option value="level-2">level-2</option>
											<option value="level-3">level-3</option>
										</form:select>

									</div>
								</div>

								<div class="form-group">

									<div>

										<form:label path="secretquestion1">SecretQuestion1</form:label>
									</div>
									<div>
										<form:select path="secretquestion1" class="form-controll">

											<option>In which month you born?</option>
											<option value="What is your favorite movie?">What is
												your favorite movie?</option>
											<option value="What is your pet name?">What is your
												pet name?</option>
										</form:select>

									</div>
								</div>
								<div class="form-row">

									<div class="form-group col-sm-12">

										<form:label path="answer1">Answer1</form:label>
										<form:input path="answer1" class="form-control" name="answer1"
											id="answer1" />
									</div>

								</div>

								<div class="form-group">

									<div>

										<form:label path="secretquestion2">SecretQuestion2</form:label>
									</div>
									<div>
										<form:select path="secretquestion2" class="form-controll">

											<option>What is your favorite place?</option>
											<option value="What is your favorite food item?">What
												is your favorite food item?</option>
											<option value="What is your highest education?">What
												is your highest education?</option>
										</form:select>

									</div>
								</div>
								<div class="form-row">

									<div class="form-group col-sm-12">

										<form:label path="answer2">Answer</form:label>
										<form:input path="answer2" class="form-control" name="answer2"
											id="answer2" />
									</div>

								</div>
								<div class="form-group">



									<div>

										<form:label path="secretquestion3">SecretQuestion3</form:label>
									</div>
									<div>
										<form:select path="secretquestion3" class="form-controll">

											<option>what is your favorite comic?</option>
											<option value="What is your home town?">What is your
												home town?</option>
											<option value="What is your favorite color?">What is
												your favorite color?</option>
										</form:select>

									</div>

									<div class="form-row">

										<div class="form-group col-sm-12">

											<form:label path="answer3">Answer3</form:label>
											<form:input path="answer3" class="form-control"
												name="answer3" id="answer3" />
										</div>

									</div>

									<div class="form-row">

										<div class="form-group col-sm-12">


											<button class="btn btn-primary btn-lg">Register</button>
										</div>

									</div>
							</form:form>


							<span class="signup">Do you have Account?</span><a
								href="supportanalystlogin" class="signupbtn">Login</a>

						</div>
					</div>
				</div>


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





