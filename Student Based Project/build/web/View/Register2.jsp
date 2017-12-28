<%-- 
    Document   : Register2
    Created on : Dec 22, 2017, 7:03:39 PM
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
                <center> <h1>Insert Your Image</h1> </center>
            </div>
            
            <hr>
            
            <div class="row">
                <div class="col-sm-offset-3 col-sm-6">
                    
                    <form action="${pageContext.request.contextPath}/RegisterS2" method="post" enctype="multipart/form-data">
                      
                        <div class="form-group">
                        <label for="exampleInputFirstName">Upload Your Image</label>
                        <input type="file" class="form-control" id="image" name="image" placeholder="ENter Your Image">
                        </div>
                        
                         <br>
                        
                         <center>
                            <button type="submit" class="btn btn-success" id="button">Submit</button>
                        </center>
                    
                     </form>
                </div>
            </div>
            
            <hr>
            
           
            
        </div>
        <br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
