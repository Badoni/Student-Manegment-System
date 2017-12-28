
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class feedbackS extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          
        PrintWriter out = response.getWriter();
        try
        {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String feedback = request.getParameter("feedback");
            
            HttpSession session = request.getSession();
            String Uname=(String) session.getAttribute("uname");
      
             if(Uname==null)
             {
                 response.sendRedirect("View/Login.jsp");
             }
             else
             {
                Class.forName("org.h2.Driver");
                Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
                PreparedStatement pmt = conn.prepareStatement("insert into Feedback values(?,?,?)");
                pmt.setString(1,name);
                pmt.setString(2,email);
                pmt.setString(3,feedback);
                
                 Properties props=new Properties();
                 out.println("2");
                 props.put("mail.smtp.auth","true");
                 props.put("mail.smtp.starttls.enable","true");
                 props.put("mail.smtp.host","smtp.gmail.com");
                 props.put("mail.smtp.port","587");
                 out.println("3");
                 final String username="Enter Your Email Here";
                 final String password="Enter Your Password Here";
                 final String fromEmail="dummym33@gmail.com";
                 final String toEmail=email;
                 final String subject="Lalit Badoni";
                 final String textmessage="Thank you For your valuable feedback, we will appricate your feedback";
                 out.println("4");

                 Session ss = Session.getInstance(props, new LoginAuthenticator(username,password));
                   
             Message message=new MimeMessage(ss);
             message.setFrom(new InternetAddress(fromEmail));
             message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toEmail));
             message.setSubject(subject);
             message.setText(textmessage);
             
             Transport.send(message);
         
         
             int a=pmt.executeUpdate();
             
              response.sendRedirect("View/ThankYou.jsp");
             }
        }
        catch (Exception e)
        {
            out.println(e);
        }
    }
     



 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
class LoginAuthenticator extends Authenticator
{
    PasswordAuthentication authentication=null;
    public LoginAuthenticator(String username, String password) 
    {
     authentication = new PasswordAuthentication(username, password);
    }
    @Override
    protected PasswordAuthentication getPasswordAuthentication()
    {
        return authentication;
    }  
}
}
