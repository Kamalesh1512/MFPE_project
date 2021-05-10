/**
 * 
 */

function adminvalidation() {

	var fname = document.getElementById("firstName").value;
	var lname = document.getElementById("lastName").value;
	var age = document.getElementById("age").value;
	var gender = document.getElementById("gender").value;
	var phone = document.getElementById("contactNumber").value;
	var id = document.getElementById("adminId").value;
	var pwd = document.getElementById("password").value;
	var qstn1 = document.getElementById("secretquestion1").value;
	var ans1 = document.getElementById("answer1").value;
	var qstn2 = document.getElementById("secretquestion2").value;
	var ans2 = document.getElementById("answer2").value;
	var qstn3 = document.getElementById("secretquestion3").value;
	var ans3 = document.getElementById("answer3").value;

	var pattern = /[A-Za-z0-9]{6,32}/;
	var pattern1 = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pattern2 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	if (fname == "") {
		alert("Please update Mandatory fields");
		document.getElementById("firstName").style.borderColor = "red";
		return false;
	}
	if (lname == "") {
		alert("Please update Mandatory fields");
		document.getElementById("lastName").style.borderColor = "red";
		return false;
	}
	if (age == "") {
		alert("Please update Mandatory fields");
		document.getElementById("Age").style.borderColor = "red";
		return false;
	}
	if (gender == "") {
		alert("Please update Mandatory fields");
		document.getElementById("Gender").style.borderColor = "red";
		return false;
	}
	if (phone == "") {
		alert("Please update Mandatory fields");
		document.getElementById("contactNumber").style.borderColor = "red";
		return false;
	}
	if (id == "") {
		alert("Please update Mandatory fields");
		document.getElementById("adminId").style.borderColor = "red";

		return false;
	}
	if (pwd == "") {
		alert("Please update Mandatory fields");
		document.getElementById("password").style.borderColor = "red";
		return false;
	}
	if (qstn1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion1").style.borderColor = "red";
		return false;
	}

	if (ans1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer1").style.borderColor = "red";
		return false;
	}

	if (qstn2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion2").style.borderColor = "red";
		return false;
	}

	if (ans2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer2").style.borderColor = "red";
		return false;
	}
	if (qstn3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion3").style.borderColor = "red";
		return false;
	}

	if (ans3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer3").style.borderColor = "red";
		return false;
	}

	if (!pattern.test(id)) {
		alert("Please update Mandatory fields");
		document.getElementById("adminId").style.borderColor = "red";
		return false;
	}
	if (!pattern1.test(phone)) {
		alert("Please update Mandatory fields");
		document.getElementById("contactNumber").style.borderColor = "red";
		return false;
	}
	if (!pattern2.test(pwd)) {
		alert("Please update Mandatory fields");
		document.getElementById("password").style.borderColor = "red";
		return false;

	}
}

function uservalidation() {
	var fn = document.getElementById("firstName").value;
	var pattern = /[A-Za-z]{6,32}/;
	var phone = document.getElementById("contactNumber").value;
	var pattern1 = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pwd = document.getElementById("password").value;
	var pattern2 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	var seatNo = document.getElementById("seatNo").value;
	var ln = document.getElementById("lastName").value;
	var designation = document.getElementById("designation").value;
	var IpAddress = document.getElementById("IpAddress").value;
	var PcNumber = document.getElementById("PcNumber").value;
	var id = document.getElementById("userId").value;
	var qstn1 = document.getElementById("secretquestion1").value;
	var ans1 = document.getElementById("answer1").value;
	var qstn2 = document.getElementById("secretquestion2").value;
	var ans2 = document.getElementById("answer2").value;
	var qstn3 = document.getElementById("secretquestion3").value;
	var ans3 = document.getElementById("answer3").value;
	if (fn == "") {
		document.getElementById("firstName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (ln == "") {
		document.getElementById("lastName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (seatNo == "") {
		document.getElementById("seatNo").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (designation == "") {
		document.getElementById("designation").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (PcNumber == "") {
		document.getElementById("PcNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (IpAddress == "") {
		document.getElementById("IpAddress").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (phnno == "") {
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (id == "") {
		document.getElementById("userId").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	} else if (pwd == "") {
		document.getElementById("password").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (qstn1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion1").style.borderColor = "red";
		return false;
	}

	if (ans1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer1").style.borderColor = "red";
		return false;
	}

	if (qstn2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion2").style.borderColor = "red";
		return false;
	}

	if (ans2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer2").style.borderColor = "red";
		return false;
	}
	if (qstn3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion3").style.borderColor = "red";
		return false;
	}

	if (ans3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer3").style.borderColor = "red";
		return false;
	} else if (!pattern.test(id)) {
		document.getElementById("firstName").style.borderColor = "red";
		alert("Firstname should be minimum of 6 characters");
		return false;
	} else if (!pattern1.test(phone)) {
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Enter phone number with maximum of 10 digits ");
		return false;
	} else if (!pattern2.test(pwd)) {
		document.getElementById("password").style.borderColor = "red";
		alert("Enter password with minimum of 7 characters with one special character and numerical value");
		return false;
	}
}

function loginvalidate() {

	var id = document.getElementById("userId").value;
	var pwd = document.getElementById("password").value;
	if (id == "") {
		document.getElementById("userId").style.borderColor = "red";
		alert("please update mandatory highlighted fields");
		return false;
	} else if (pwd == "") {
		document.getElementById("password").style.borderColor = "red";
		alert("please update mandatory highlighted fields");
		return false;
	}
}

function supportvalidate() {
	var fn = document.getElementById("firstName").value;
	var pattern = /[A-Za-z]{6,32}/;
	var phone = document.getElementById("contactNumber").value;
	var pattern1 = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pwd = document.getElementById("password").value;
	var pattern2 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	var age = document.getElementById("age").value;
	var ln = document.getElementById("lastName").value;
	var gender = document.getElementById("gender").value;
	var supportLevel = document.getElementById("supportLevel").value;
	var id = document.getElementById("analystId").value;
	var qstn1 = document.getElementById("secretquestion1").value;
	var ans1 = document.getElementById("answer1").value;
	var qstn2 = document.getElementById("secretquestion2").value;
	var ans2 = document.getElementById("answer2").value;
	var qstn3 = document.getElementById("secretquestion3").value;
	var ans3 = document.getElementById("answer3").value;

	if (fn == "") {
		document.getElementById("firstName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (ln == "") {
		document.getElementById("lastName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (age == "") {
		document.getElementById("age").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (gender == "") {
		document.getElementById("gender").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (id == "") {
		document.getElementById("analystId").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (pwd == "") {
		document.getElementById("password").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (qstn1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion1").style.borderColor = "red";
		return false;
	}

	if (ans1 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer1").style.borderColor = "red";
		return false;
	}

	if (qstn2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion2").style.borderColor = "red";
		return false;
	}

	if (ans2 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer2").style.borderColor = "red";
		return false;
	}
	if (qstn3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("secretquestion3").style.borderColor = "red";
		return false;
	}

	if (ans3 == "") {
		alert("Please update Mandatory fields");
		document.getElementById("answer3").style.borderColor = "red";
		return false;
	}
	if (phnno == "") {
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (supportlevel == "") {
		document.getElementById("supportLevel").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}
	if (!pattern.test(fn)) {
		document.getElementById("firstName").style.borderColor = "red";
		alert("Firstname should be minimum of 6 characters");
		return false;
	} else if (!pattern1.test(phone)) {
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Enter phone number with maximum of 10 digits ");
		return false;
	} else if (!pattern2.test(pwd)) {
		document.getElementById("password").style.borderColor = "red";
		alert("Enter password with minimum of 7 characters with one special character and numerical value");
		return false;
	}
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
}