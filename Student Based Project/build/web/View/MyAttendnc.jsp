<%-- 
    Document   : MyAttendnc
    Created on : Nov 4, 2017, 9:20:51 PM
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
        <title>My Attendanc</title>
    </head>
    <body>
           <%@include file="Header.jsp"%>
        
        <header>
             <div class="container">
               <hr>
               <img src="Asstes/Attendance.png" alt="Image" width="100%" id="img">
               <hr>
             </div>

        </header>
        
        
        <div class="container">
  <table  class="table table-bordered">
    <thead>
      <tr>
        <th><center>Username</center></th>
        <th><center>Date</center></th>
        <th><center>Check In Time</center></th>
        <th><center>Check Out Time</center></th>
      </tr>
    </thead>
 
        
    <%
       String name=(String) session.getAttribute("uname");
       
        try
            {
            Class.forName("org.h2.Driver");
            Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
            PreparedStatement pmt = conn.prepareStatement("select * from ATTENDENCS where USERNAME = ?");
            pmt.setString(1,name);
            ResultSet rs=pmt.executeQuery();
            while(rs.next())
            {
           
    %>
    
    
    
    <tbody>
      <tr>
   <td><center><%=rs.getString("USERNAME") %></center></td>
  <td><center><%=rs.getString("DATE") %></center></td>
  <td><center><%=rs.getString("CHECKIN") %></center></td>
  <td><center><%=rs.getString("CHECKOUT") %></center></td>
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
            <hr>
            <br><br>
            <%@include file="Footer.jsp"%>
    </body>
</html>
