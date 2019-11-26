<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<link href="<u:url value="/resources/css/login.css" />"
 rel="stylesheet">

<link href="login.css" rel="stylesheet">

</head>

<body >
        
        <div class="login">
                <h3>Welcome</h3>
                <c:form action="validate"  method="get" modelAttribute="netuser" >
                    <div class="input-group">
                        <c:input type="text" path="userId"  required="required"/>
                        <span>User ID</span>
                    </div>
                    <div class="input-group">
                        <c:input type="password" path="password" required="required"/>
                        <span>Password</span>
                    </div>
                    <div class="input-group">
                        <c:input type="submit" value="Login" path="" required="required"/>
                    </div>
                </c:form>
                <a href="opennetb">First Time User? <span>Register Here</span></a>
                <a href="forgotidform">Forgot UserID <span>Click Here</span></a>
                <a href="forgotpassform">Forgot Password <span>Click Here</span></a>
                
            </div>
            
  
</body>

</html>