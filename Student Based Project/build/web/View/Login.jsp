<%-- 
    Document   : Login
    Created on : Oct 28, 2017, 12:06:38 AM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <style>
           body
           {
             background-image: url(Asstes/Login.jpg);
             background-size: cover;
             color: white;
             background-repeat: no-repeat;
             background-position: center;
             background-attachment: fixed;
           }
           .form-contain
           {
               border: 0px solid #fff;
               padding: 50px 60px;
               margin-top: 20vh;
               box-shadow: 1px 4px 20px 11px rgba(148,140,140,1);
           }
           .form-group 
           {
               color: springgreen;
           }
        </style>
        
    </head>
    <body>
        
        <%@include file="Header.jsp"%>
        
        <div class="container-fluid">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            
            <div class="col-md-4 col-sm-4 col-xs-12">
             
                <form class="form-contain" action="${pageContext.request.contextPath}/AuthS" method="post"> 
                    <center><h1 style="color: springgreen;"> Login </h1></center>
                    <hr>
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputEmail1">USERName</label>
                    <input type="text" class="form-control" id="exampleInputUserName" name="username" placeholder="Enter Your USERName">
                    </div>
              
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword" name="password" placeholder="Enter Your Password">
                    </div>
               
                    <br>
                    
                    <center><button type="submit" class="btn btn-success btn-block">Submit</button></center>
            
                </form>
            
            </div> 
            
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
        
        <br>
        <br>
        <br>
        <%@include file="Footer.jsp"%>
        
    </body>
</html>
