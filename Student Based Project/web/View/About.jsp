<%-- 
    Document   : About
    Created on : Oct 24, 2017, 2:06:32 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About</title>
        
        <style>
            #jumb
            {
                height: 90%;
            }
            .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  margin-top: 1%;
            }
            .card:hover
            {
                filter : drop-shadow(0 0 20px SlateBlue);
            }

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

#a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        
        
            <div class="jumbotron" style="background-color: black;" id="jumb">
                <h1>Imagination Is More Powerfull Then Roboatic Brain</h1>
            </div>
        <div class="row">
            <div class="col-sm-4">
        <div class="card">
            <img src="Asstes/146005.png" alt="John" style="width:100%"/>
  <h1>Miss Hinata</h1>
  <p class="title">Coder, For</p>
  <p>This Web Application</p>
  <div class="next" style="margin: 24px 0;">
    <a href="http://www.youtube.com" id="a"><i class="fa fa-youtube"></i></a> 
    <a href="http://www.twtter.com" id="a"><i class="fa fa-twitter"></i></a>  
    <a href="http://www.linkedin.com" id="a"><i class="fa fa-linkedin"></i></a>  
    <a href="http://www.facebook.com" id="a"><i class="fa fa-facebook"></i></a> 
 </div>
  
 <p><button data-toggle="modal" data-target="#myModal">Contact</button></p>
</div>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
          <div class="modal-header"><center>
            <h4 class="modal-title" style="background-color: silver;">Contact</h4>
          </center>
          </div>
          <div class="modal-body" style="background-color: silver;">
              <p><center><img src="Asstes/146005.png" style="filter : drop-shadow(0 0 20px SlateBlue);"  alt="Lalit Image" height="250px"/></center></p>
          <center> <h1>Owner</h1>Hinata  </center>
          <center> <h4>Mobile Number : +91-99********</h4> </center>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" style="filter : drop-shadow(0 0 20px SlateBlue);">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
      
              <div class="col-sm-4">
        <div class="card">
            <img src="Asstes/lalit.png" alt="John" style="width:100%"/>
  <h1>Lalit Badoni</h1>
  <p class="title">CEO & Founder, For</p>
  <p>This Web Application</p>
  <div class="next" style="margin: 24px 0;">
    <a href="http://www.youtube.com" id="a"><i class="fa fa-youtube"></i></a> 
    <a href="http://www.twtter.com" id="a"><i class="fa fa-twitter"></i></a>  
    <a href="http://www.linkedin.com" id="a"><i class="fa fa-linkedin"></i></a>  
    <a href="http://www.facebook.com" id="a"><i class="fa fa-facebook"></i></a> 
 </div>
  
 <p><button data-toggle="modal" data-target="#myModal">Contact</button></p>
</div>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
          <div class="modal-header"><center>
            <h4 class="modal-title" style="background-color: silver;">Contact</h4>
          </center>
          </div>
          <div class="modal-body" style="background-color: silver;">
              <p><center><img src="Asstes/lalit.png" style="filter : drop-shadow(0 0 20px SlateBlue);"  alt="Lalit Image" height="250px"/></center></p>
          <center> <h1>Owner</h1>Lalit Badoni  </center>
          <center> <h4>Mobile Number : +91-99********</h4> </center>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" style="filter : drop-shadow(0 0 20px SlateBlue);">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
            
            
            
                  <div class="col-sm-4" >
        <div class="card">
            <img src="Asstes/about girl.jpg" alt="John" style="width:100%"/>
  <h1>Miss Sakura</h1>
  <p class="title">Designer, For</p>
  <p>This Web Application</p>
  <div class="next" style="margin: 24px 0;">
    <a href="http://www.youtube.com" id="a"><i class="fa fa-youtube"></i></a> 
    <a href="http://www.twtter.com" id="a"><i class="fa fa-twitter"></i></a>  
    <a href="http://www.linkedin.com" id="a"><i class="fa fa-linkedin"></i></a>  
    <a href="http://www.facebook.com" id="a"><i class="fa fa-facebook"></i></a> 
 </div>
  
 <p><button data-toggle="modal" data-target="#myModal">Contact</button></p>
</div>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
          <div class="modal-header"><center>
            <h4 class="modal-title" style="background-color: silver;">Contact</h4>
          </center>
          </div>
          <div class="modal-body" style="background-color: silver;">
              <p><center><img src="Asstes/about girl.jpg" style="filter : drop-shadow(0 0 20px SlateBlue);"  alt="Lalit Image" height="250px"/></center></p>
          <center> <h1>Owner</h1>Sakura  </center>
          <center> <h4>Mobile Number : +91-99********</h4> </center>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" style="filter : drop-shadow(0 0 20px SlateBlue);">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
        
        </div>
        <br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
