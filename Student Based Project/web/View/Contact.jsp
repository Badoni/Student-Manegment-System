<%-- 
    Document   : Contact
    Created on : Dec 24, 2017, 8:15:40 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style>
            #showcase
            {
                background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url("Asstes/contact.jpg");
                background-position: center;
                background-size: cover;
                height: 50vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
                padding: 0 20px;
                margin-top: 0;
                background-attachment: fixed;
            }
            #showcase h1
            {
                font-family: monospace;
                line-height: 1;
                font-size: 40px
            }
            #showcase h6
            {
                line-height: 1.2;
                font-family: cursive;
                color: #e67e22;
                font-size: 30px;
            }
            #row
            {
                margin-top: 5vh;
                margin-left: 40vh;
                font-size: 10vh;
            }
            .u
            {
                color: SlateBlue;
            }
            .u:hover
            {
                color: #e67e22;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
         <header id="showcase">
            <h1>Contact Us</h1>
            <h6>Do you have question.</h6>
        </header>
        <br>
        <section>
            <center><h1 style="color: springgreen;"> get in Touch </h1></center>
            <div class="row" id="row">
                <div class="col-sm-4">
                    <a href="http://www.facebook.com" class="u"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                </div>
                <div class="col-sm-4">
                    <a href="http://www.linkedin.com" class="u"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                </div>
                <div class="col-sm-4">
                   <a href="http://www.twitter.com" class="u"><i class="fa fa-twitter" aria-hidden="true"></i></a> 
                </div>
            </div>
        </section>
        <br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
