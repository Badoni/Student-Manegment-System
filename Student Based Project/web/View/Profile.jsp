<%-- 
    Document   : Profile
    Created on : Nov 4, 2017, 3:05:29 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Asstes/Profile.css">
        <title>Profile</title>
    
        <style>
            #PricingTab
            {
                padding-top: 0px;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
    <%
             String usname = (String) session.getAttribute("usname");
             String ftname = (String) session.getAttribute("ftname");
             String ltname = (String) session.getAttribute("ltname");
             String email = (String) session.getAttribute("email");
             String mobile = (String) session.getAttribute("mobile");
             String gender = (String) session.getAttribute("gender");
             String dob = (String) session.getAttribute("dob");
             String pass = (String) session.getAttribute("pass");
             String role = (String) session.getAttribute("role");
    %>
    <div id="PricingTab">
		<div class="container">
                    <hr>
      	<h2>Profile Details</h2>
      <hr class="White-Yellow">
			<div class="row">
        <table class="table table-condensed table-hover">
            <tbody>
                <tr>
    <td class="tabco1" >  <h3> USERNAME :</h3> </td>
    <td class="tabco3"><h3><%=usname %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>FIRSTNAME :</h3></td>
    <td class="tabco3" ><h3><%=ftname %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>LASTNAME :</h3></td>
<td class="tabco3" ><h3><%=ltname %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>EMAIL :</h3></td>
<td class="tabco3" ><h3><%=email %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>MOBILE :</h3></td>
<td class="tabco3" ><h3><%=mobile %></h3></td>
</tr>
<tr>
    <td class="tabco1"><h3>GENDER :</h3> </td>
<td class="tabco3" ><h3><%=gender %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>DATE OF BIRTH :</h3></td>
<td class="tabco3" ><h3><%=dob %></h3></td>
</tr>
<tr>
    <td class="tabco1" ><h3>ROLE :</h3></td>
<td class="tabco3" ><h3><%=role %></h3></td>
</tr>  </tbody>

</table>
      </div><!--row-->
    </div><!--container-->
</div><!--PricingTab-->

    
    
    
    
        <%@include file="Footer.jsp"%>
    </body>
</html>
