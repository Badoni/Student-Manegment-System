<%-- 
    Document   : Fees
    Created on : Nov 4, 2017, 7:04:20 PM
    Author     : badon
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fees</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
              
          <div class="container-fluid">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            
            <div class="col-md-4 col-sm-4 col-xs-12">
             
                <form class="form-contain" action="${pageContext.request.contextPath}/FeesS" method="post"> 
                    <center><h1 style="color: springgreen;"> Student Fees Payment </h1></center>
                    <hr>
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputEmail1">Student USERNAME</label>
                    <input type="text" class="form-control" id="exampleInputUserName" name="name" placeholder="Enter Student USerNAme">
                    </div>
              
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputPassword1">Fees Of Month</label>
                    <input type="month" class="form-control" id="exampleInputPassword" name="month" placeholder="Enter Month">
                    </div>
               
                    <br>
               
                    <div class="form-group">
                    <label for="exampleInputEmail1">Student Fees</label>
                    <input type="number" class="form-control" id="exampleInputUserName" name="fees" placeholder="Enter Student Fees">
                    </div>
                    
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputEmail1">Recevie Date</label>
                    <input type="date" class="form-control" id="exampleInputUserName" name="date" placeholder="Enter Student Fees Date">
                    </div>
                    
                    <br>
                    
                    <center><button type="submit" class="btn btn-success btn-block">Submit</button></center>
            
                </form>
            
            </div> 
            
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
        
                    <br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
