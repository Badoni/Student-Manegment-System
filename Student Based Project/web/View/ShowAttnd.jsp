<%-- 
    Document   : ShowAttnd
    Created on : Nov 4, 2017, 8:32:45 PM
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
        <title>Attendencs</title>
    </head>
    <body>
        
        <%@include file="Header.jsp"%>
        
        <div class="container">
               <hr>
               <img src="Asstes/Attendance.png" alt="Image" width="100%" id="img">
           </div>

        <header>
            <center><h2> Student Attendencs </h2></center>    
        </header>
        <br>
        <hr>
        <div class="container">
  <table  class="table table-bordered">
    <thead>
      <tr>
        <th>Username</th>
        <th>Date</th>
        <th>Check In Time</th>
        <th>Check Out Time</th>
      </tr>
    </thead>
 
        <%
            try
            {
            Class.forName("org.h2.Driver");
            Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
            PreparedStatement pmt = conn.prepareStatement("select * from Attendencs");
              
            ResultSet rs=pmt.executeQuery();
            while(rs.next())
            {
                
        %>
         
    <tbody>
      <tr>
        <td><%=rs.getString("username") %></td>
        <td><%=rs.getString("date") %></td>
        <td><%=rs.getString("checkin") %></td>
        <td><%=rs.getString("checkout") %></td>
      </tr>
      
    </tbody>
    
                <%
                }
                }
             catch(Exception e)
                     {
                     out.println(e);
                     }
            %>

            
  </table>
</div>
            <%@include file="Footer.jsp"%>
    </body>
</html>
