<%-- 
    Document   : MyFee
    Created on : Nov 4, 2017, 9:05:42 PM
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
        <title>My Fee</title>
    </head>
    <body>
      
        <%@include file="Header.jsp"%>
        
        <header>
             <div class="container">
               <hr>
               <img src="Asstes/fee.jpg" alt="Image" width="100%" id="img">
           </div>

        </header>
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
       String name=(String) session.getAttribute("uname");
       
        try
            {
            Class.forName("org.h2.Driver");
            Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
            PreparedStatement pmt = conn.prepareStatement("select * from Fees where NAME = ?");
            pmt.setString(1,name);
            ResultSet rs=pmt.executeQuery();
            while(rs.next())
            {
           
    %>
    
    
    
    <tbody>
      <tr>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("month") %></td>
        <td><%=rs.getString("fees") %></td>
        <td><%=rs.getString("date") %></td>
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
