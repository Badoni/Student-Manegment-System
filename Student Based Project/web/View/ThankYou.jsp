<%-- 
    Document   : ThankYou
    Created on : Dec 19, 2017, 10:46:37 AM
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
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        
        <title>ThankYou</title>
        <style>
           body
           {
             background-image: linear-gradient(rgba(0,0,0,0.1), rgba(0,0,0,0.9)),url(Asstes/thnk.jpg);
             background-size: cover;
             color: white;
             background-repeat: no-repeat;
             background-position: center;
             background-attachment: fixed;
             font-family: 'Shrikhand', cursive;
           }
            .form-contain
           {
               padding: 40px 30px;
               margin-top: 30vh;
               box-shadow: 1px 4px 20px 3px rgba(23,240,3,1);
               position: absolute;
               text-shadow: 0 0 20px #ff005b;
           }
           .row
           {
               margin-top: 10vh;
               font-size: 50px;
           }
           .u
           {
               background: #fff;
               display: block;
               width: 30%;
               height: 20%;
               border-radius: 50%;
               text-align: center;
               position: relative;
               overflow: hidden;
               border: 3px solid black;
               z-index: 1;
           }
           .u .fa
           {
               position: relative;
               color: #262626;
               transition: .9s;
               z-index: 3;
           }
           .u:hover .fa
           {
               color: #fff;
               transform: rotateY(360deg);
           }
           .u:before
           {
               content: '';
               position: absolute;
               top: 100%;
               left: 0;
               width: 100%;
               height: 100%;
               background: #f00;
               transition: .5s;
               z-index: 2;
           }
           .u:hover:before
           {
               top: 0;
           }
           #i:nth-child(1) .u:before
           {
               background: #3b5999;
           }
           #i:nth-child(2) .u:before
           {
               background: #dd4b39;
           }
           #i:nth-child(3) .u:before
           {
               background: #55acee;
           }
           #i:nth-child(4) .u:before
           {
               background: #cd201f;
           }
           #i:nth-child(5) .u:before
           {
               background: #0077B5;
           }
           #i:nth-child(6) .u:before
           {
               background: #410093;
           }
           #tc
           {
               color: #ff005b;
               font-size: 20px;
           }
           #showcase
           {
               padding-top: 43vh;
           }
           #showcase .link
            {
                text-decoration: none;
                color: #fff;
                border: 1px solid black;
                font-size: 20px;
                padding: 10px 20px;
                border-radius: 10px;
                
            }
            #showcase .link:hover
            {
                background: black;
                color: rgba(23,240,3,1);
                border: 1px solid black;
                transition: all 0.5s ease-in;
            }
            .color
            {
              width: 80%;
            }
        </style>
    </head>
    <body>
        
        <div class="container">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            
            <div class="col-md-4 col-sm-4 col-xs-12" id="feed">
                    
                        <h1 class="form-contain">[ THANK, YOU!! ]</h1>
                    
            </div>
            
           
            <div class="col-md-4 col-sm-4 col-xs-12">
                
            </div>
        </div>
        <br>
       
        <section class="social">
            <h1 class="text-center" id="tc">Like/Subscribe us for latest updates or newsletter</h1>
            <hr class="color">
            <br>
             <section id="showcase">
            <center> <a href="${pageContext.request.contextPath}/View/MasterPage.jsp" class="link">Go Back To Home Page</a> </center>
        </section>
        <br> 
               <div class="row">
                   <center>
                   
                   <div class="col-sm-2" id="i">
                       <a href="http://www.facebook.com" class="u"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                   </div>
                   <div class="col-sm-2" id="i">
                       <a href="http://www.google.com" class="u"><i class="fa fa-google" aria-hidden="true"></i></a>
                   </div>
                   <div class="col-sm-2" id="i"> 
                       <a href="http://www.twitter.com" class="u"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                   </div>    
                   <div class="col-sm-2" id="i">
                       <a href="http://www.youtube.com" class="u"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                   </div>
                   <div class="col-sm-2"id="i">
                       <a href="http://www.linkedin.com" class="u"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                   </div>
                   <div class="col-sm-2" id="i">
                       <a href="http://www.yahoo.com" class="u"><i class="fa fa-yahoo" aria-hidden="true"></i></a>
                   </div>
                   
                   </center>
               </div>
        </section>    
        
    </body>
</html>
