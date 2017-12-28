<%-- 
    Document   : ImageShow
    Created on : Dec 22, 2017, 9:42:22 AM
    Author     : badon
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <%
             String name = (String) session.getAttribute("name");
             String ftname = (String) session.getAttribute("ftname");
             String ltname = (String) session.getAttribute("ltname");
             String email = (String) session.getAttribute("email");
             String mobile = (String) session.getAttribute("mobile");
             String gender = (String) session.getAttribute("gender");
             String dob = (String) session.getAttribute("dob");
             String pass = (String) session.getAttribute("pass");
             String role = (String) session.getAttribute("role");
        %>
        <style>
            #profile
            {
                margin-top: 10vh;
                margin-bottom: 10vh;
            }
        </style>
    </head>
    
    <body>
        <%@include file="Header.jsp"%>
        <br>
        <div class="container" id="profile">
            <section id="section1">
                <div class="row">
                    <div class="col-sm-4">
                        <img src="Asstes/giphy.gif" class="img-circle" alt="UserImage" height="150" width="150">
                    </div>
                    <div class="col-sm-8">
                        <table class="table table-hover">
                            <center>
                                <tbody>
                                 <tr>
                                   <td><b>USERNAME :</b></td>
                                   <td><%=name%></td>
                                 </tr>
                                 <tr>
                                   <td><b>FIRST NAME :</b></td>
                                   <td><%=ftname%></td>
                                 </tr>
                                 <tr>
                                   <td><b>LAST NAME :</b></td>
                                   <td><%=ltname%></td>
                                 </tr>
                                 <tr>
                                   <td><b>EMAIL :</b></td>
                                   <td><%=email%></td>
                                 </tr>
                                 <tr>
                                   <td><b>MOBILE :</b></td>
                                   <td><%=mobile%></td>
                                 </tr>
                                 <tr>
                                   <td><b>GENDER :</b></td>
                                   <td><%=gender%></td>
                                 </tr>
                                 <tr>
                                   <td><b>DATE OF BIRTH :</b></td>
                                   <td><%=dob%></td>
                                 </tr>
                                 <tr>
                                   <td><b>PASSWORD :</b></td>
                                   <td><%=pass%></td>
                                 </tr>
                                 <tr>
                                   <td><b>ROLE :</b></td>
                                   <td><%=role%></td>
                                 </tr>
                               </tbody>
                             </center>  
                        </table>
                    </div>
                </div>
            </section>
        </div> 
                                 <br>
                                 <%@include file="Footer.jsp"%>
    </body>
</html>
