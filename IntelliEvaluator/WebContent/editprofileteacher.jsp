<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
    background-image: url("Images/green.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}

</style>
</head>
<body>
<center>
<div class="container" style="padding-top: 60px;">
  <h1 class="page-header"><font color=white>Edit Profile</font></h1>
  <div class="row">
    <!-- left column -->
    <div class="col-md-4 col-sm-6 col-xs-12">
      <div class="text-center">
        <img src="http://lorempixel.com/200/200/people/9/" class="avatar img-circle img-thumbnail" alt="avatar">
       <font color=white> <h6>Upload a different photo...</h6></font>
        <input type="file" class="text-center center-block well well-sm">
      </div>
    </div>
    <!-- edit form column -->
    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
      
      <h3><font color=white>Personal info</font></h3>
      <form action="EditProfileTeacherServlet" class="form-horizontal" method="post" onsubmit="return validateForm(this);">
     
     <%@page import="com.ie.pkg.TeacherSignupBean"%>
<%

String tid=(String)session.getAttribute("tid");

%>
     <script type="text/javascript">
 function validateForm(frm) {
 if(frm.FirstName.value!=null){
	 
	 if (!FirstName.match(/^[a-zA-Z]+$/)) 
	    {
	        alert('Only alphabets are allowed');
	        return false;
	    }

	    return true;
	}
 if(frm.LastName.value!=null){
	 if (!LastName.match(/^[a-zA-Z]+$/)) 
	    {
	        alert('Only alphabets are allowed');
	        return false;
	    }

	    return true;
 }
 
 if(frm.FromEmailAddress.value!=null){
	 if (frm.FromEmailAddress.value.indexOf("@") < 1 || frm.FromEmailAddress.value.indexOf(".") < 1)
		 {
		 alert("Enter valid email address");
		 return false;
		 }
	 return true;
 } 
 if(frm.pass1.value!=null && frm.pass2.value!=null){
	 var p1=frm.pass1.value;
	 var p2=frm.pass2.value;
	 if (p1!=p2){alert('Password does not match');frm.pass2.focus();return false;}
	 return true; }
 }
 
 </script>

     <div class ="form-group">
     <label class="col-lg-3 control-label"><font color='white'>Teacher ID:</font></label>
          <div class="col-lg-8">
           <font color='white'><b><%=tid%></b></font>
          </div>
        </div>
     
     <div class="form-group">
          <label class="col-lg-3 control-label"><font color='white'>First name:</font></label>
          <div class="col-lg-8">
            <input class="form-control" value="" type="text" name="FirstName">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label"><font color='white'>Last name:</font></label>
          <div class="col-lg-8">
            <input class="form-control" value="" type="text" name="LastName">
          </div>
        </div>
        
        <div class="form-group">
          <label class="col-lg-3 control-label"><font color='white'>Email:</font></label>
          <div class="col-lg-8">
            <input class="form-control" value="" type="text" name="FromEmailAddress">
          </div>
        </div>
        
       
        <div class="form-group">
          <label class="col-md-3 control-label"><font color='white'>Password:</font></label>
          <div class="col-md-8">
            <input class="form-control" value="" type="password" name="pass1">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label"><font color='white'>Confirm password:</font></label>
          <div class="col-md-8">
            <input class="form-control" value="" type="password" name="pass2">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label"></label>
          <div class="col-md-8">
            <input class="btn btn-primary" value="Save Changes" type="submit">
            <span></span>
            <input class="btn btn-default" value="Cancel" type="reset">
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</center></body>
</html>
</body>
</html>