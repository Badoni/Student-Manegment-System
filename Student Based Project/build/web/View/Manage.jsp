<%-- 
    Document   : Manage
    Created on : Nov 4, 2017, 4:10:05 PM
    Author     : badon
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Manage</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
       
        <hr>
     <div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>Username</th>
        <th>Firstname</th>
        <th>Active</th>
        <th>Role</th>
        <th>Update</th>
        <th>Delete</th>
      </tr>
    </thead>
 
        <%
            try
            {
            Class.forName("org.h2.Driver");
            Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
            PreparedStatement pmt = conn.prepareStatement("select * from Register");
              
            ResultSet rs=pmt.executeQuery();
            while(rs.next())
            {
                
        %>
         
    <tbody>
      <tr>
        <td><%=rs.getString("username") %></td>
        <td><%=rs.getString("firstname") %></td>
        <td><%=rs.getString("active") %></td>
        <td><%=rs.getString("role") %></td>
        <td>
            <form action="${pageContext.request.contextPath}/View/Update.jsp">
                <button type="Submit">Update Active</button>
            </form>
        </td>
        <td>
            <form action="${pageContext.request.contextPath}/View/Update.jsp">
                <button type="Submit">Delete Student</button>
            </form>
        </td>
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
        <%@include file="Footer.jsp"%>
    </body>
</html>
