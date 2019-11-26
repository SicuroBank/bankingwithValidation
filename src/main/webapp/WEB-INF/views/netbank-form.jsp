<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header2.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="<u:url value="/resources/css/net-form.css" />"
 rel="stylesheet">  </head>
 <link href="<u:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<u:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<u:url value="/resources/js/bootstrap.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sicuro|Netbanking Registration</title>
</head>
<body>

       <u:url var="otpLink" value="/account/sendOTP">
       </u:url>

 <c:form action="savenetform" modelAttribute="netb" method="post"> 
  <div class="container">
        <h1>NetBanking Registration</h1>
 <hr>
    <label for="accno"><b>Account Number</b></label>
    <c:input type="number" placeholder="Enter Account Number" name="accNo" path="accNo" required="required" />
    
     <label ><b>User ID</b></label>
    <c:input type="text" placeholder="Enter UserID" name="" path="userId" required="required"/>
    
    <label for="psw"><b>Set Login Password</b></label>
    <c:input type="password" placeholder="Enter Password" name="password" path="password" required="required"/>
    <label for="psw-repeat"><b>Confirm Login Password</b></label>
    <c:input type="password" placeholder="Re-enter Password" name="cpassword" path="" required="required"/>
    <label for="tpsw"><b>Set Transaction password</b></label>
    <c:input type="password" placeholder="Enter Password" name="transPwd" path="transPwd" required="required"/>
    <label for="tpsw-repeat"><b>Confirm Transaction Password</b></label>
    <c:input type="password" placeholder="Re-enter Password" name="ctransPwd" path="" required="required"/>
    <div class="link">
      <!--<input type="button" onclick="href='click'" class="verify">Verify Mobile Number</button>-->
 <a href="${otpLink}">Send OTP</a>
    </div>
    
    <br>
    <label for="psw-repeat"><b>Enter OTP</b></label>
    <c:input type="number" placeholder="Type your OTP here" name="otp" path="" required="required"/>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  <div class="container signin">
    <p style="color: black;">Already have an account? <a href="loginform"> Sign in</a>.</p>
  </div>
</c:form>
</body>
</html>