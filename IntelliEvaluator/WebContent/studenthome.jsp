<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Student Home Page</title>
    
   <link rel="stylesheet" href="css/ghost.css">
   <style>
body {
    background-image: url("Images/green.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
.btn {
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
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
    <%@page import="com.ie.pkg.StudentLoginBean"%>  
<%  
StudentLoginBean bean=(StudentLoginBean)session.getAttribute("LoginBean");
out.println("<h1><center><font color='white'>");
out.println("Welcome! "+bean.sname);
out.println("</font></h1></center>");
%>
<form action=logout.jsp method="post">
      <input class="button1" type="submit" name="logout" value="Logout" style="width:100px;height:45px;">
      </form>
<center><img src="Images/graphics.gif"></center>
   
     <table cellspacing=40>
    <tr>
    <td>
    </td>
    <td>
    </td>
    <td>
    </td>
    <td>
    </td>
    <td>
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
    </td>
    <td>
    <button class="btn" onclick="location.href='TopicListServlet'">Take New Test</button>
    </td>
   <td>
    <button class="btn" onclick="location.href='StudentScoreTopicList'">Get Score</button>
    </td>
    <td>
    <button class="btn" onclick="location.href='editprofilestudent.jsp'">Edit Details </button>
     </td>
     <td>
     <button class="btn" onclick="location.href='ViewProfileStudentServlet'">View Profile </button>
   	</td>
    <td>
   <br>
       </td>   
    
    
    </tr>
  </table>  
    </body>
</html>
