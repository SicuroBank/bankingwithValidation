<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header2.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
  <head>
    <title>Account registration form</title>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="<u:url value="/resources/css/OpenAccStyle.css" />"
 rel="stylesheet">  </head>
 <link href="<u:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<u:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<u:url value="/resources/js/bootstrap.min.js" />"></script>

<body>
  
  
    
    
    <div class="main-block">
    <c:form  action="saveopenform"  method="post" modelAttribute="acholder">
      <h1>Create a new account</h1>
       <fieldset>
        <legend>
          <h3>Personal Details</h3>
        </legend>
        <div  class="personal-details">
          <div>
                <div>
                    
                
                <label>Title*</label>  
                        <c:select path="title">
                          <c:option  value=""></c:option>
                          <c:option value="Mr">Mr</c:option>
                          <c:option  value="Ms">Ms</c:option>
                          <c:option  value="Mrs">Mrs</c:option>
                          </c:select>
                      </div>
            <div><label>First Name*</label><c:input type="text" path="fName" /></div>
            <div><label>Middle Name</label><c:input type="text" path="mName" /></div>
            <div><label>Last Name*</label><c:input type="text" path="lName" /></div>
            <div><label>Father's Name*</label><c:input type="text" path="faName" /></div>

            <div><label>Mobile Number*</label><c:input type="number" path="phno" /></div>
            <div><label>Email Id</label><c:input type="text" path="email" /></div>
            <div><label>Aadhar Card Number*</label><c:input type="number" path="aadharNo" /></div>
            <div><label>Date Of Birth*</label><c:input type="date" path="dob" /></div>
          </div></div>
                    </fieldset>
        <fieldset>
        
            <legend>
                <h3>Residential Address</h3>
              </legend>
              <div  class="Residential-Address">

            <div><label>Address Line 1*</label><c:input type="text" path="resaddrline1"/></div>
            <div><label>Address Line 2*</label><c:input type="text" path="resaddrline2"/></div>
            <div><label>Landmark</label><c:input type="text" path="reslandmark"/></div>
            <div><label>City*</label><c:input type="text" path="rescity" /></div>
            <div><label>State*</label><c:input type="text" path="resstate" /></div>
            <!-- <select onchange="print_city('state', this.selectedIndex);" id="sts" path ="stt" class="form-control" ></select>
            <select id ="state" class="form-control" ></select>
            <script language="javascript">print_state("sts");</script> -->
            <div><label>Pincode*</label><c:input type="number" path="respincode" /></div>
          </div>
          </fieldset>
        <fieldset>
            <legend>
                <h3>Permanent Address</h3>
              </legend>
              <div  class="Permanent-Address">

            <div><label>Address Line 1*</label><c:input type="text" path="addrline1"/></div>
            <div><label>Address Line 2*</label><c:input type="text" path="addrline2"/></div>
            <div><label>Landmark</label><c:input type="text" path="landmark"/></div>
            <div><label>City*</label><c:input type="text" path="city" /></div>
            <div><label>State*</label><c:input type="text" path="state" /></div>
            <div><label>Pincode*</label><c:input type="number" path="pincode" /></div>
            </div>
          </fieldset>

          <fieldset>
            <legend>
                <h3>Occupation Details</h3>
              </legend>
              <div  class="Occupation-details">
                
                <div><label>Occupation Type*</label>
                  <c:select path="occtype"   >
                    <option value=""></option>
                    <option  value="Student" >Student</option>
                    <option  value="Self-Employed">Self-Employed</option>
                    <option  value="Private">Private Sector Employee</option>
                    <option  value="Government">Government Sector Employee</option>
                    </c:select></div>
                <div><label>Source of Income*</label>
                  <c:select path="sourceofincome" >
                    <option value=""></option>
                    <option  value="Stipend">Stipend</option>
                    <option  value="Salary">Salary</option>
                    <option value="Wage">Wage</option>
                    <option value="Pension">Pension</option>
                    </c:select></div>
                <div><label>Gross Annual Income*</label>
                  <c:select path="gaincome" >
                    <option value=""></option>
                    <option  value="Upto 1L">Upto 1,00,000</option>
                    <option  value="2,00,000">1,00,000 - 2,00,000</option>
                    <option value="3,00,000">2,00,000 - 3,00,000</option>
                    <option  value="4,00,000">3,00,000 - 4,00,000</option>
                    <option  value="Above 4L">Above 4L</option>
                    </c:select></div>
                    
                      <c:hidden path="accNo" />
              </div>
            </fieldset>
           <fieldset>
        <legend>
          <h3>Terms and Mailing</h3>
        </legend>
        <div  class="terms-mailing">
          <div class="checkbox">
            <input type="checkbox" path="checkbox" /><span>I accept the <a href="">Terms and Conditions.</a></span>
          </div>
          <div class="checkbox">
            <input type="checkbox" path="checkbox" /><span>I want a Debit Card</span>
          </div >
      </fieldset>
      <center>
     <div class="submit">
      <button type="submit">Submit</button>
           </div>
      
      </center>
      
    </c:form>
    </div> 
  </body>
</html>