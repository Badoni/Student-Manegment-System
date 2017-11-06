<%-- 
    Document   : Update
    Created on : Nov 4, 2017, 5:29:16 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Value</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
       
        <div class = "container">
	<div class="wrapper">
            <form action="${pageContext.request.contextPath}/ManageUpdateS" method="post" class="form-signin">       
		    <h3 class="form-signin-heading"> Permission Student |Active|</h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="uname" placeholder="Enter Student/Admin Username" required="" autofocus="" />
			  <input type="text" class="form-control" name="active" placeholder="Enter Active or Non Active" required=""/>     		  
			 
			  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
		</form>			
	</div>
</div>
                    
                    <hr>
                    <hr>
       
                    
                    <div class = "container">
	<div class="wrapper">
            <form action="${pageContext.request.contextPath}/DeleteS" method="post" class="form-signin">       
		    <h3 class="form-signin-heading"> Delete Student Profile</h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="uname" placeholder="Enter Student/Admin Username" required="" autofocus="" />
			 
			  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
		</form>			
	</div>
</div>

    </body>
</html>
