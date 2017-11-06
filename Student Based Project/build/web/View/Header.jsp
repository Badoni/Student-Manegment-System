<%-- 
    Document   : Header
    Created on : Oct 23, 2017, 7:03:05 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="Asstes/File.css">
        
        
        
        <style>
           .navbar
            {
             background-color: SlateBlue;
            }  
            #myNavbar li a
            {
                    color: #000;
            
            }
            .icon-bar
            {
                background-color: #000;
            }
            #adm
            {
                color: springgreen;
            }
            #id
            {
                color: white;
            }
        </style>
    </head>
    <body>
        
<nav class="navbar">
<div class="container-fluid">
    
    <div class="navbar-header">
       
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        
    </div>
    
<div class="collapse navbar-collapse" id="myNavbar">
      
    <ul class="nav navbar-nav navbar-right">
   
        
   
        <li class="active"><a href="${pageContext.request.contextPath}/View/MasterPage.jsp"><span class="glyphicon glyphicon-home" id="id"></span> Home</a></li>
        <li><a href="${pageContext.request.contextPath}/View/About.jsp"><span class="glyphicon glyphicon-asterisk" id="id"></span> About</a></li>
        <li><a href="${pageContext.request.contextPath}/View/Contact us.jsp"><span class="glyphicon glyphicon-asterisk" id="id"></span> Contact Us</a></li>
            
    </ul>
    
    
    
                    
    <ul class="nav navbar-nav ">
        
    <%
       String firstname= (String) session.getAttribute("name");                     
       String Role= (String) session.getAttribute("role");                     
       String username=(String) session.getAttribute("uname");
       if (username == null) 
       {
    %>
    
        <li><a href="${pageContext.request.contextPath}/View/Register.jsp"><span class="glyphicon glyphicon-user" id="id"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/View/Login.jsp"><span class="glyphicon glyphicon-log-in" id="id"></span> Login</a></li>
   
     <%  
        } 
     else if(Role.equals("Student"))
        {
     %>
        <li><a href="${pageContext.request.contextPath}/LogOutS"><span class="glyphicon glyphicon-off" id="id"></span> Logout</a></li>
        <%session.setAttribute("name",username); %>
        <li><a href="${pageContext.request.contextPath}/ProfileS"><span class="glyphicon glyphicon-heart" id="id"></span> Wellcome <%=firstname %></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Student Profile <span class="glyphicon glyphicon-hand-down" id="id"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/View/MyFee.jsp">My Fees Report</a></li>
            <li><a href="${pageContext.request.contextPath}/View/MyAttendnc.jsp">My Attendence</a></li>
            <li><a href="#">Profile Change</a></li>
          </ul>
        </li>
        
    <% 
       }
     else
       { 
    %>
       <li><a href="${pageContext.request.contextPath}/LogOutS"><span class="glyphicon glyphicon-off" id="id"></span> Logout</a></li>
       <li><a href="<%session.setAttribute("name",username); %>${pageContext.request.contextPath}/ProfileS"><span class="glyphicon glyphicon-heart" id="id"></span> Wellcome <%=firstname %> {Admin}</a></li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin Panel <span class="glyphicon glyphicon-hand-down" id="id"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/View/Manage.jsp">New Student</a></li>
            <li><a href="${pageContext.request.contextPath}/View/Fees.jsp">New Fees</a></li>
            <li><a href="${pageContext.request.contextPath}/View/Attendencs.jsp">New Attendencs </a></li>
            <li><center><h5>Check Report</h5></center>
                <ul class="dropdown-menu-right">
                    <li><a href="${pageContext.request.contextPath}/View/ShowFee.jsp">Fees Report </a></li>
                    <li><a href="${pageContext.request.contextPath}/View/ShowAttnd.jsp">Attendanc Report </a></li>
                </ul>  
            </li>
          </ul>
        </li>
       <% 
       }  
     %>
        
    </ul>
    
    
</div>
    
    
  </div>
</nav>
    </body>
</html>
