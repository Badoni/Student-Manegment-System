<%-- 
    Document   : MasterPage
    Created on : Oct 23, 2017, 7:01:31 PM
    Author     : badon
--%>
<%@include file="Header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Asstes/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>STUDENT {home}</title>
     
        <style>
            body
            {
                margin-top: 0;
                padding: 0;
            }
            #showcase
            {
                background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url("Asstes/Carosel2.jpg");
                background-position: center;
                background-size: cover;
                height: 90vh;
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
                color: white;
                line-height: 1;
                font-size: 40px
            }
            #showcase h4
            {
                line-height: 1.2;
                font-family: cursive;
                color: #e67e22;
                font-size: 30px;
            }
            #showcase .link
            {
                text-decoration: none;
                color: #926239;
                border: 1px solid #926239;
                font-size: 20px;
                padding: 10px 20px;
                border-radius: 10px;
                margin-top: 20px;
            }
            #showcase .link:hover
            {
                background: #e67e22;
                color: #fff;
                border: 1px solid #e67e22;
                transition: all 0.7s ease-in;
            }
           .para
           {
               width: 70%;
               margin-left: 15%;
               margin-bottom: 5%;
           }
           #section h3
           {
               margin-top: 4%;
               margin-bottom: 30px;
           }
           h3:after
           {
               width: 120px;
               height: 2px;
               background-color: #e67e22;
               display: block;
               content: " ";
               margin: 0 auto;
               margin-top: 20px;
           }
           #section i
           {
               font-size: 45px;
               color: #e67e22;
               margin-left: 35%;
           }
           #section h4
           {
               margin-left: 16%;
           }
           .figure img
           {
               width: 70%;
               transform: scale(1.05);
               transition: all 0.9s;
               margin-top: 50px;
               margin-left: 66px;
               margin-bottom: 70px;
           }
           .figure img:hover
           {
               transform: scale(0.9);
           }
           .log img
           {
               width: 30%;
               margin-top: 50px;
               margin-left: 115px;
               transition: all 1s ease;
           }
           .log img:hover
           {
               transform: scale(1.1);
           }
           #ss
           {
               margin-left: 5px;
               margin-bottom: 50px;
           }
           .cont i
           {
               color: #e67e22;
           }
           .cont h4
           {
               color: #e67e22
           }
           .testimonials
           {
               margin-top: 80px;
               background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(Asstes/Fall-Nature-Background-Pictures.jpg);
               background-attachment: fixed;
               padding-top: 40px;
               padding-bottom: 60px;
               color: white;
           }
           .testimonials h3
           {
             margin-bottom: 40px; 
           }
           .testimonials cite img
           {
               width: 50px;
               height: 50px;
               border-radius: 60%;
               margin-left: 50px;
           }
           .testimonials p
           {
               color: #e67e22;
               line-height: 25px;
               text-align: justify;
           }
           .content-section
           {
               width: 50%;
               margin: 0 auto;
               margin-top: 80px;
               margin-bottom: 70px;
           }
           
           .content-section p
           {
               font-size: 1.2em;
               color: #e67e22;
           }
           .btn-md
           {
             background: #e67e22;
             color: #fff;
             border: 1px solid black;
             font-size: 20px;
             border-radius: 4px;
             margin-top: 10px;  
           }
           .gap
           {
               margin-top: 40px;
           }
           .feedback
           {
               margin-top: 40px;
              margin-bottom: 20px;
           }
           
           
        </style>
    </head>
    <body>
        
        <header id="showcase">
            <h1>Wellcome To The</h1>
            <h4>Student Manegment System | Check Your Student Activity</h4>
            <a href="#" class="link">Read More</a>
        </header>
        
        <section id="section">
            <h3 class="text-center">Get Some Notes</h3> 
            <p class="para">
                Student life is the period of education. Education is the all round 
                development of an individual into a useful member of society. 
                We must see that student life is full-filling this aim. 
                The success or failure of student-life can be judged by the students life. 
                Unfortunately for us, student life in our country is not receiving the right 
                amount of attention that it deserves. We hope things will take proper shape now.
            </p>
                       
        
        <div class="container">
            <div class="row">
                
                <div class="col-md-3">
                    <h4>Student Project</h4>
                    <i class="fa fa-heartbeat"></i>
                    <p class="arrangn">
                        development of an individual into a useful member of society. 
                        We must see that student life is full-filling this aim. 
                        The success or failure of student-life can be judged by the students life. 
                        Unfortunately for us, student life in our country is not receiving the right 
                    </p>
                </div>
                
                <div class="col-md-3">
                    <h4>Student Project</h4>
                    <i class="fa fa-heartbeat"></i>
                    <p class="arrangn">
                        development of an individual into a useful member of society. 
                        We must see that student life is full-filling this aim. 
                        The success or failure of student-life can be judged by the students life. 
                        Unfortunately for us, student life in our country is not receiving the right 
                    </p>
                </div>
                
                <div class="col-md-3">
                    <h4>Student Project</h4>
                    <i class="fa fa-heartbeat"></i>
                    <p class="arrangn">
                        development of an individual into a useful member of society. 
                        We must see that student life is full-filling this aim. 
                        The success or failure of student-life can be judged by the students life. 
                        Unfortunately for us, student life in our country is not receiving the right 
                    </p>
                </div>
                
                <div class="col-md-3">
                    <h4>Student Project</h4>
                    <i class="fa fa-heartbeat"></i>
                    <p class="arrangn">
                        development of an individual into a useful member of society. 
                        We must see that student life is full-filling this aim. 
                        The success or failure of student-life can be judged by the students life. 
                        Unfortunately for us, student life in our country is not receiving the right 
                    </p>
                </div>
                
            </div>
        </div>
        
      </section>      
        
        <section class="secondsection">
            
               <div class="row">
                  
                   <div class="col-sm-4">
                          <figure class="figure">
                          <img src="Asstes/background.jpg">
                          </figure>
                  </div>
              
                
                
                  <div class="col-sm-4">
                          <figure class="figure">
                          <img src="Asstes/background.jpg">
                          </figure>
                  </div>
               
                
                
                  <div class="col-sm-4">
                          <figure class="figure">
                          <img src="Asstes/background.jpg">
                          </figure>
               </div>

        </section>
        
        <section class="log">
            <h3 class="text-center">STUDENT's SPEAK</h3>
            <div class="cont">
                <div class="row" id="ss">
                   
                    <div class="col-md-3">
                        <img src="Asstes/graphics-student-423841.gif">
                        <h4 class="text-center">Student 1</h4>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                        <p><i class="fa fa-cog"></i> The grooming sessions provided to me good.</p>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                    </div>
                    
                    <div class="col-md-3">
                        <img src="Asstes/graphics-student-423841.gif">
                        <h4 class="text-center">Student 2</h4>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                        <p><i class="fa fa-cog"></i> The grooming sessions provided to me good.</p>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                    </div>
                    
                    <div class="col-md-3">
                        <img src="Asstes/graphics-student-423841.gif">
                        <h4 class="text-center">Student 3</h4>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                        <p><i class="fa fa-cog"></i> The grooming sessions provided to me good.</p>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                    </div>
                    
                    <div class="col-md-3">
                        <img src="Asstes/graphics-student-423841.gif">
                        <h4 class="text-center">Student 4</h4>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                        <p><i class="fa fa-cog"></i> The grooming sessions provided to me good.</p>
                        <p><i class="fa fa-cog"></i> The faculty were top-notch as I expected.</p>
                    </div>
                    
                             
                </div>
            </div>
        </section>
        
        
        <section class="testimonials">
            <h3 class="text-center">Our Teacher's Speak</h3>
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-4">
                            <p class="para">
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                            </p>
                            <cite>
                                <img src="Asstes/background.jpg">JAVA Professer
                            </cite>
                    </div>
                    
                    <div class="col-md-4">
                            <p class="para">
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                               The faculty were top-notch as I expected.
                               The grooming sessions provided to me good.
                            </p>
                            <cite>
                                <img src="Asstes/background.jpg">HTML,CSS Professer
                            </cite>
                    </div>
                    
                    <div class="col-md-4">
                            <p class="para">
                               The grooming sessions provided to me good
                               The faculty were top-notch as I expected
                               The grooming sessions provided to me good
                               The faculty were top-notch as I expected
                               The grooming sessions provided to me good
                               The faculty were top-notch as I expected
                               The grooming sessions provided to me good
                            </p>
                            <cite>
                                <img src="Asstes/background.jpg">DATABASE Professer
                            </cite>
                    </div>
                    
                </div>
            </div>
        </section>
        
        <section class="feedback">
            <div class="container"> 
               <h3 class="text-center">We Will Happy,For Your Valuable FeedBack</h3>
            </div>
            <div class="row gap">
                <form class="form-contain" action="${pageContext.request.contextPath}/feedbackS" method="post">
                    <div class="col-sm-4">
                        <input type="text" placeholder="Name" name="name" class="form-control"><br>
                        <input type="email" placeholder="Email" name="email" class="form-control"><br>
                    </div>
                    
                    <div class="col-sm-8">
                        <textarea class="form-control" rows="4" name="feedback" placeholder="Enter your feedback" ></textarea><br>
                    </div>
                    
                    <center><button class="btn btn-warning btn-md" type="submit">Give Your Feedback</button></center>
                </form>    
           </div>
        </section>
                    
        
        <%@include file="Footer.jsp"%>
    </body>
</html>
