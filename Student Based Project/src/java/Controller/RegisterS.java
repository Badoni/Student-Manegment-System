package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author badon
 */
public class RegisterS extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        try
        {
           String First_Name = request.getParameter("fname");
           String Last_Name = request.getParameter("lname");
           String Email = request.getParameter("email");
           String Mobile_Number = request.getParameter("mobile");
           String Gender = request.getParameter("gender");
           String Date = request.getParameter("birthofdate");
           String Password2 = request.getParameter("password");
           String UserName2 = "U@N" + First_Name;
           String Role="Student";
           String Active="Non-Active";
           Class.forName("org.h2.Driver");
           Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
           PreparedStatement pmt = conn.prepareStatement("insert into Register values(?,?,?,?,?,?,?,?,?,?)");
          
           pmt.setString(1,UserName2);
           pmt.setString(2,First_Name);
           pmt.setString(3,Last_Name);
           pmt.setString(4,Email);
           pmt.setString(5,Mobile_Number);
           pmt.setString(6,Gender);
           pmt.setString(7,Date);
           pmt.setString(8,Password2);
           pmt.setString(9,Role);
           pmt.setString(10,Active);
         
         Properties props=new Properties();
         out.println("2");
         props.put("mail.smtp.auth","true");
         props.put("mail.smtp.starttls.enable","true");
         props.put("mail.smtp.host","smtp.gmail.com");
         props.put("mail.smtp.port","587");
         out.println("3");
         final String username="dummym33@gmail.com";
         final String password="12345";
         final String fromEmail="dummym33@gmail.com";
         final String toEmail=Email;
         final String subject="|Bahushali| Uzumaki";
         final String textmessage="your USERNAME is : "+ UserName2 + " your PASSWORD is : "+ Password2 + "\n" + " Your Account Active With In 24 Hours";
         out.println("4");
         
         Session session=Session.getInstance(props, new LoginAuthenticator(username,password));
                
           out.println("5");
         
             Message message=new MimeMessage(session);
             message.setFrom(new InternetAddress(fromEmail));
             message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toEmail));
             message.setSubject(subject);
             message.setText(textmessage);
             
             Transport.send(message);
         
         
             int a=pmt.executeUpdate();
           
           response.sendRedirect("View/Login.jsp");
            
        }
        catch(IOException | ClassNotFoundException | SQLException | MessagingException e)
                {
                  // response.sendRedirect("View/Register.jsp");
                  out.println(e);
                }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }
    
    
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
