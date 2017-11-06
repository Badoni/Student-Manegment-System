<%-- 
    Document   : Attendencs
    Created on : Nov 4, 2017, 8:20:15 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendencs</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
       
        <br>
        <hr>
        
        <div class="container">
            <form action="${pageContext.request.contextPath}/AttendS" post="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" placeholder="" class="form-control" name="name" placeholder="Student username" />
    </div>
    <div class="form-group">
        <label for="password">Date</label>
        <input type="date" placeholder="" class="form-control" name="date"  placeholder="Date" />
    </div>
    <div class="form-group">
        <label for="password">In Time</label>
        <input type="time" placeholder="" class="form-control" name="in" placeholder="Check In Time" />
    </div><div class="form-group">
        <label for="password">Out Time</label>
        <input type="time" placeholder="" class="form-control" name="out" placeholder="Check Out Time" />
    </div>
        <button class="btn btn-block btn-danger">Send Password</button>
        </form>
            <br>
            <hr>
        <%@include file="Footer.jsp"%>
    </body>
</html>
