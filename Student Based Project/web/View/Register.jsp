<%-- 
    Document   : Register
    Created on : Oct 25, 2017, 10:16:58 AM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        
        <style>
              body
              {
                  background-image: url(Asstes/signup.jpg);
                  background-size: cover;
                  color: white;
                  background-repeat: no-repeat;
                  background-position: center;
                  background-attachment: fixed;
              }
              form
              {
              color: white;
              padding: 40px;
              margin-top: 40px;
              padding-bottom: 60px;
              box-shadow: 10px 10px 5px rgba(9,1,1,0.93);
              }
          
              .form-control
              {
                  border-radius: 0px;
                  color: white;
              }
              #example
              {
                  background-color: #4582ec33;
              }
              #button
              {
                  margin-top: 3%;
                  
              }
        </style>
        
        
    </head>
    <body>
        <%@include file="Header.jsp"%>
        
        <div class="container">
            <br>
            <div class="well">
                <center> <h1>Register with us</h1> </center>
            </div>
            
            <hr>
            
            <div class="row">
                <div class="col-sm-offset-3 col-sm-6">
                    
                    <form action="${pageContext.request.contextPath}/RegisterS" method="post">
                      
                         <div class="form-group">
                        <label for="exampleInputFirstName">First Name</label>
                        <input type="text" class="form-control" id="example" name="fname" placeholder="Name" required="This Field Is Required">
                        </div>
                      
                         <br>
                         
                         <div class="form-group">
                        <label for="exampleInputLastName">Last Name</label>
                        <input type="text" class="form-control" id="example" name="lname" placeholder="Surname" required="This Field Is Required">
                        </div>
                    
                         <br>
                         
                         <div class="form-group">
                        <label for="exampleInputEmail">Email</label>
                        <input type="email" class="form-control" id="example" name="email" placeholder="Email" required="This Field Is Required">
                        </div>
                        
                         <br>
                         
                         <div class="form-group">
                        <label for="exampleInputMobileNumber">Mobile number</label>
                        <input type="tel" class="form-control" id="example" name="mobile" placeholder="Number" required="This Field Is Required">
                        </div>
                         
                         <br>
                         
                         <div class="form-group">
                        <label for="gender1">Gender</label>
                        <select class="form-control" name="gender" id="example" required="This Field Is Required">
                            <option> Gender</option>
                            <option> Male</option>
                            <option> Female</option>
                            </select>          
                        </div>
                         
                         <br>
                         
                         <div class="form-group">
                        <label for="exampleInputDateOfBirth">Date Of Birth</label>
                        <input type="date" class="form-control"  id="example" name="birthofdate" placeholder="Date Of Birth" required="This Field Is Required">
                        </div>
                
                         <br>
                         
                         <div class="form-group">
                        <label for="exampleInputPassword">Password</label>
                        <input type="password" class="form-control" id="example" name="password" placeholder="Password" required="This Field Is Required">
                        </div>
                    
                        <center>
                            <button type="submit" class="btn btn-success" id="button">Next</button>
                        </center>
                    
                     </form>
                </div>
            </div>
            
            <hr>
            
            <div class="col-sm-offset-3 col-sm-6">
            <a href="#">Click Me To Read Our Term & Condition</a>
            </div>
            
        </div>
        <br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
