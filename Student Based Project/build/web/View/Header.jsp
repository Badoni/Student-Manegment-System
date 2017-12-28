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
        <link href="Asstes/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
        
        
        <link rel="stylesheet" href="Asstes/File.css">
        
        
        
        <style>
           .navbar
            {
             background-color: SlateBlue;
             margin-bottom: 0;
             border-radius: 0;
            }  
            #myNavbar li a
            {
                    color: #000;
            
            }
            .icon-bar
            {
                background-color: #e67e22;
            }
            #adm
            {
                color: springgreen;
            }
            #id
            {
                color: #e67e22;
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
        <li><a href="${pageContext.request.contextPath}/View/About.jsp"><i class="fa fa-chain" id="id"></i> About</a></li>
        <li><a href="${pageContext.request.contextPath}/View/Contact.jsp"><span class="glyphicon glyphicon-asterisk" id="id"></span> Contact Us</a></li>
            
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
        <li><a href="${pageContext.request.contextPath}/View/Login.jsp"><span class="glyphicon glyphicon-log-in" id="id"></span> Log In</a></li>
   
     <%  
        } 
     else if(Role.equals("Student"))
        {
     %>
        <li><a href="${pageContext.request.contextPath}/LogOutS"><span class="glyphicon glyphicon-off" id="id"></span> Logout</a></li>
        <li><a href="${pageContext.request.contextPath}/ProfileS"><span class="glyphicon glyphicon-heart" id="id"></span> Wellcome <%= firstname %></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Student Desk <span class="glyphicon glyphicon-hand-down" id="id"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/View/MyFee.jsp">My Fees Report</a></li>
            <li><a href="${pageContext.request.contextPath}/View/MyAttendnc.jsp">My Attendence</a></li>
          </ul>
        </li>
        
    <% 
       }
     else
       { 
    %>
       <li><a href="${pageContext.request.contextPath}/LogOutS"><span class="glyphicon glyphicon-off" id="id"></span> Logout</a></li>
       <li><a href="${pageContext.request.contextPath}/View/Register2.jsp"><span class="glyphicon glyphicon-heart" id="id"></span> Wellcome <%=firstname %> {Admin}</a></li>
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
            <li><a href="${pageContext.request.contextPath}/ProfileS"><%session.setAttribute("name",username); %> Admin Profile</a></li>
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
