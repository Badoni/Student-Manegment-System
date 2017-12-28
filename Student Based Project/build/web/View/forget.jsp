<%-- 
    Document   : forget
    Created on : Dec 24, 2017, 7:34:33 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <title>Forget Passsword</title>
        <style>
            body
            {
             background-image:linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)) ,url(Asstes/City_Landscape_Background-e1431837281110.jpg);
             background-size: cover;
             color: white;
             background-repeat: no-repeat;
             background-position: center;
             background-attachment: fixed;
            }
            .container
            {
                margin-top: 20vh;
            }
        </style>
    <div class="container">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
            
            <div class="col-md-4 col-sm-4 col-xs-12">
             
                <form class="form-contain" action="${pageContext.request.contextPath}/ForgetS" method="post"> 
                    <center><h1 style="color: springgreen;"> ChangeYourPassword </h1></center>
                    <hr>
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputEmail1">Username</label>
                    <input type="text" class="form-control" id="exampleInputEmail" name="username" required="Blank Field">
                    </div>
              
                    <br>
                    
                    <div class="form-group">
                    <label for="exampleInputPassword1">Current Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword" name="cpassword" required="Blank Field">
                    </div>
               
                    <br>
                    
                    
                    <div class="form-group">
                    <label for="exampleInputPassword1">New Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword" name="npassword" required="Blank Field">
                    </div>
                    
                    <br>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="password_modal_save">Save changes</button>
                    </div>
                    <br>
                   </form>
                    <button type="submit" class="btn" data-dismiss="modal" aria-hidden="true"><a href="${pageContext.request.contextPath}/View/MasterPage.jsp">Close</a></button>
                             
            </div> 
            
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>
    </head>
    <body>
             
        
     
    </body>
</html>
