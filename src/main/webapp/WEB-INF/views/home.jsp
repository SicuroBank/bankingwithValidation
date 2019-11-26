<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
<link href="<ci:url value="/resources/css/home.css" />"
     rel="stylesheet"> 
</head>

<body>
       
        
    <div class= "header"> 
            <a href="#about">About Us</a>
            <a href="#contact">Contact Us</a>
    </div>
    <center>
    <span class="blinking">SICURO  will never ask for confidential information such as PIN and OTP from customers </span>
    <br>
  <span  class="blinking">Please do not share personal info.</span>
  </center>
    <div class="wrapper">
    <div class="sidemenu">
    <ul>
        <li><a href='/bankingproject/netbank/loginform'>Login</a></li>
        <li><a href='/bankingproject/netbank/opennetb'>New User?Register</li>
        <li><a href='/bankingproject/account/openform'>Apply Online for Account</a></li>
    </ul>
</div>



<div class="marquee-content ">
                          
                           
  <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrollamount="3" height="145">
     
          <p style="font-weight: bold;">
                  <span class="fa fa-info-circle" style="color: #026d97;">
                    
                    <span style="background-color: yellow">Important Security Tips For Safe Online Banking</span>
                  
                    </br></br>
                    1: Access your bank website only by typing the URL in the address bar of your browser.
                  </br></br>
                    2: Be aware of  <mark>downloading any malicious application</mark> from mobile application stores (Google Playstore, Apple App Store, Blackberry App World, Ovi Store, Windows Marketplace etc) that are offering Online Banking. Kindly check their authenticity before downloading, by contacting your Bank.
                    </br> </br>
                    3:Do not click on any links in any <mark>e-mail message </mark>to access the site.
                  </br></br>

      

         
          </span>
     
      
      
      
  </marquee>
</div>
</div>


<div class="slideshow-container center">
        <marquee direction="scroll" onmouseover="this.stop();" onmouseout="this.start();">In case your mobile is deactivated without your request or you get a call in this regard, somebody may be trying to get a duplicate SIM/ steal your credentials like OTP (One time password), confidential details for beneficiary registration etc. Please be cautious. </marquee>

        <div class="mySlides fade">
                <img src="<ci:url value="/resources/img/1.jpg" />" style="width:100%">
              </div>
              
              <div class="mySlides fade">
                <img src="<ci:url value="/resources/img/2.jpg" />" style="width:100%">
               
              </div>
              
              <div class="mySlides fade">
                <img src="<ci:url value="/resources/img/3.jpg" />" style="width:100%">
                                           </div>
        
               <div class="mySlides fade">
                <img src="<ci:url value="/resources/img/4.jpg" />" style="width:100%">
                </div>    
                 
                 
                  
                
                
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                
                </div>
                <br>
                
                <div style="text-align:center">
                  <span class="dot" onclick="currentSlide(1)"></span> 
                  <span class="dot" onclick="currentSlide(2)"></span> 
                  <span class="dot" onclick="currentSlide(3)"></span> 
                  <span class="dot" onclick="currentSlide(4)"></span> 
                  
                </div>
        
        <script>
        var slideIndex = 1;
        showSlides(slideIndex);
        
        function plusSlides(n) {
          showSlides(slideIndex += n);
        }
        
        function currentSlide(n) {
          showSlides(slideIndex = n);
        }
        
        function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
        }


        var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 2 seconds
}
        </script>


<div class="footer">
<p>
        Copyright © 2019 Sicuro Bank
 </p>

</div>
</body>
</html>