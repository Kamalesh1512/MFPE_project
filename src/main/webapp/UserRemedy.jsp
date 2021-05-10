<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Remedy Creation</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<script type="text/javascript">
function validate(){
	
	var phone=document.getElementById("contactNumber").value;
	var pattern1=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var PcNumber=document.getElementById("PcNumber").value;
	var id=document.getElementById("userId").value;
	var stmt=document.getElementById("statement").value;
	if(PcNumber==""){
		document.getElementById("PcNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	
	}else if(phnno==""){
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(stmt==""){
		document.getElementById("statement").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(id==""){
		document.getElementById("userId").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	
	}else if(!pattern1.test(phone)){
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Enter phone number with maximum of 10 digits ");
		return false;
	
	}
}
</script>
</head>
<body>
<div class="header">

<div style="head-align:center;">
${message}
</div>
<div align="center">
<h1>User Remedy Creation</h1>
<div class="formdata">
<form:form  onsubmit="return validate()" action="userrem" modelAttribute="userremedy" method="post">
<!-- First Name, Last Name,Designation,seatNo,PcNumber,IpAddress, Contact Number, User Id, Password -->
<table align="center">
<tr>
<td>UserId:</td>
<td><form:input path="user" id="userId" /></td>
</tr>
<tr>
<td>PcNumber:</td>
<td><form:input path="PcNumber" id="PcNumber"/></td>
</tr>

<tr>
<td>Contact Number:</td>
<td><form:input path="contactNumber" id="contactNumber" />
</td>
</tr>

<tr>
<td>Category:</td>
<td>
<form:select path="category" id="category" class="select-box" >
<option selected="selected" value="select">Select</option>
<option selected="selected" value="network issues">NetWorking</option>
  <option value="Leave management portal">Leave Management Portal</option>
  <option value="Desktop issues">Desktop issues</option>
  <option value="Laptop issues">Laptop issues</option>
  <option value="Admin travel">Admin travel</option>
</form:select>
</td>
</tr>
<tr>
<td colspan="10" align="right">
<form:input path="statement" id="statement" placeholder="Statement" width="300px" />
</td>
</tr>
</table>
<br><br>

<input type="submit" value ="submit" class="formsubmitbutton"/><br><br>
</form:form>





</div>
</div>
</div>
<%
RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp");
rd.include(request,response);
%>

</body>
</html>