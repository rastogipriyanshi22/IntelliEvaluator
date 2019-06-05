<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Daily UI - Day 1 Sign In</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Sign Up</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script>
    function validate(frm)
{
    var genderM=frm.gender;
    var genderF=frm.gender1;

    if(genderM.checked==false && genderF.checked==false )
       {
            alert("You must select male or female");
            return false;
       }   
 }
    </script>
    <!-- Load jQuery JS -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <!-- Load jQuery UI Main JS  -->
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script >
    $(document).ready(
    		  
    		  /* This is the function that will get executed after the DOM is fully loaded */
    		  function () {
    		    $( "#datepicker" ).datepicker({
    		      changeMonth: true,//this option for allowing user to select month
    		      changeYear: true //this option for allowing user to select from year range
    		    });
    		  }

    		);
    
    </script>
    
    <link rel="stylesheet" href="runnable.css" />
       <style>
body {
    background-image: url("Images/green.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
.button1 {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #33adff;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #33adff;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

</style>
</head>
<body>
<center><h2>Student Sign Up</h2></center>
 <form action="StudentSignupServlet" id="ContactUsCaptchaWebForm" method="post" onsubmit="return validateForm(this);" onsubmit="return validate(this);">
 <input id="SnapHostID" name="SnapHostID" type="hidden" value="FM7ZGT92KTKW" />
 <script type="text/javascript">
 function validateForm(frm) {
 if (frm.FirstName.value == "") {alert('First Name is required.');frm.FirstName.focus();return false;}
 if (frm.LastName.value == "") {alert('Last Name is required.');frm.LastName.focus();return false;}
 if (frm.RollNo.value == "") {alert('Roll No. is required.');frm.Organization.focus();return false;}
 if (frm.FromEmailAddress.value == "") {alert('Email address is required.');frm.FromEmailAddress.focus();return false;}
 if (frm.FromEmailAddress.value.indexOf("@") < 1 || frm.FromEmailAddress.value.indexOf(".") < 1) {alert('Please enter a valid email address.');frm.FromEmailAddress.focus();return false;}
 if (frm.pass1.value == "") {alert('Password is required.');frm.pass1.focus();return false;}
 if (frm.pass2.value == "") {alert('Password is required.');frm.pass2.focus();return false;}
 var p1=frm.pass1.value;
 var p2=frm.pass2.value;
 if (p1!=p2){alert('Password does not match');frm.pass2.focus();return false;}
 return true; }

 </script>
 <font color="white">
 <center>
 <table border="0" cellpadding="0" cellspacing="0" width="600" style="width: 638px; height: 341px; ">
 <tr>
 <td><b>First, Last Name*:</b></td>
 <td>
 <input id="FirstName" name="FirstName" type="text" maxlength="60" style="width:146px; border:1px solid #999999" />
 <input id="LastName" name="LastName" type="text" maxlength="60" style="width:146px; border:1px solid #999999" />
 </td>
 </tr><tr>
 <td><b>Roll No*:</b></td>
 <td><input id="RollNo" name="RollNo" type="text" maxlength="60" style="width:300px; border:1px solid #999999" /></td>
 </tr><tr>
 <td><b>Email address*:</b></td>
 <td><input id="FromEmailAddress" name="FromEmailAddress" type="text" maxlength="60" style="width:300px; border:1px solid #999999" /></td>
 </tr><tr>
 <td><b>Date of birth</b></td>
 <td><input type="text" id="datepicker" name="Dob"/></td>
 </tr><tr>
 <td><b>Gender:</b></td>
 <td><input id="gender" name="gender" type="radio" />Male &nbsp; <input id="gender1" name="gender1" type="radio" />Female</td>
 </tr><tr>
 <td><b>Set Password*:</b></td>
 <td><input id="pass1" name="pass1" type="password" maxlength="43" style="width:250px; border:1px solid #999999" /></td>
 </tr><tr>
 <td><b>Confirm Password*:</b></td>
 <td><input id="pass2" name="pass2" type="password" maxlength="43" style="width:250px; border:1px solid #999999" /></td>
 </tr><tr>
 <td colspan="2" align="center">
 <br />
 <tr>
 <td>
  * - required fields. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <input class="button1" id="skip_Submit" name="skip_Submit" type="submit" value="Submit" onmouseover="this.style.color='white';" onmouseout="this.style.color='black';" 
 />
 </td>
 </tr>
 </table>
 </center>
 <br />
  </font>
 </form>

</body>
</html>

