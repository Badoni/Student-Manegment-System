<%-- 
    Document   : ShowFee
    Created on : Nov 4, 2017, 8:01:00 PM
    Author     : badon
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Fees</title>
    </head>
    <body>
       
        <%@include file="Header.jsp"%>
        
        <header>
            <center><h2>Fees Report</h2></center>    
        </header>
        <br>
        <hr>
        <div class="container">
  <table  class="table table-bordered">
    <thead>
      <tr>
        <th>Username</th>
        <th>Month</th>
        <th>Fees</th>
        <th>Date</th>
      </tr>
    </thead>
 
        <%
            try
            {
            Class.forName("org.h2.Driver");
            Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
            PreparedStatement pmt = conn.prepareStatement("select * from Fees");
              
            ResultSet rs=pmt.executeQuery();
            while(rs.next())
            {
                
        %>
         
    <tbody>
      <tr>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("month") %></td>
        <td><%=rs.getString("fees") %></td>
        <td><%=rs.getString("month") %></td>
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
            
            
            <div class="container">
               <hr>
               <img src="Asstes/fee.jpg" alt="Image" width="100%" id="img">
           </div>

            <%@include file="Footer.jsp"%>
    </body>
</html>
