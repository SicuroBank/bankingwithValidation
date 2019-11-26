<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
<title>Creating Fixed Header and Footer with CSS</title>
<link href="<u:url value="/resources/css/dash-form.css" />" rel="stylesheet">

</head>
<body>
       
              
    <div class="header">
   
            <div class="top-container">
                <img src="<u:url value="/resources/img/Logo.png" />" alt="SicuroBank Logo" width="15%" height="15%">
               
    </div>
    </div>   
            <nav>
                <div class="topnav">
                        <a class="active" href="#home">Home</a>
                        <a href="account/">Logout</a>
                   
                      </div>
             </nav>
             <div class="headr">
              <h1>Payment Modes</h1>
              <br>
            </div>

    <div class="content">
    <div class="sidenav">
            <a class="active" href="#about">Funds Transfer</a>
            <a  href="/bankingproject/ben/benshow">Add Beneficiary</a>
            <a href="#statement">Account Statement</a>
            <a href="#summary">Account Summary</a>
            <a href="#details">Account Details</a>
          </div>
          
    </div>

    
    


    <div class="center">

      
   
        <section class="mysec">
          <div class="row">
            <div class="column">
      
              <div class="card">
                <div class="center-img">
      
                  <img class="icon" src="img/dep.png" alt="">
                </div>
                <p>IMPS</p>
      
              </div>
            </div>
            <div class="column">
              <div class="card">
                <div class="center-img">
      
                  <img class="icon" src="img/course.png" alt="">
                </div>
                <p>RTGS</p>
              </div>
            </div>
            <div class="column">
      
              <div class="card">
                <div class="center-img">
      
                  <img class="icon" src="img/ins.png" alt="">
                </div>
                <p>NEFT</p>
              </div>
            </div>
           
      
      
      </div>
        </section>
      </div>



    


    <div class="fixed-footer">
        <div class="container">Copyright &copy; Sicuro Bank 2019</div>        
    </div>



</body>
</html>        