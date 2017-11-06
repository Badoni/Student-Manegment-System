package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author badon
 */

public class AuthS extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
           
        PrintWriter out = response.getWriter();
        try
        {
              String uname = request.getParameter("username");
              String pass = request.getParameter("password");
              
              Class.forName("org.h2.Driver");
              Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
              PreparedStatement pmt = conn.prepareStatement("select * from Register where USERNAME = ?");
              
              pmt.setString(1, uname);
            
              ResultSet rs=pmt.executeQuery();
            
              if(rs.next())
            {
                out.println("1");
              String username=rs.getString(1);
              String firstname=rs.getString(2);
              String lastname=rs.getString(3);
              String email=rs.getString(4);
              String mobile=rs.getString(5);
              String gender=rs.getString(6);
              String dateofbirth=rs.getString(7);
              String password=rs.getString(8);
              String role= rs.getString(9);
              String active = rs.getString(10);
              
              if(uname.equals(username) && pass.equals(password) && role.equals("Student") && active.equals("Active"))
              {
                  HttpSession session = request.getSession(true);
                  session.setAttribute("name",firstname);
                  session.setAttribute("uname",username);
                  session.setAttribute("role", role);
                  response.sendRedirect("View/MasterPage.jsp");
              }
              
             else if(uname.equals(username) && pass.equals(password) && role.equals("ADMIN") && active.equals("Active"))
              {
                  HttpSession session = request.getSession(true);
                  session.setAttribute("name",firstname);
                  session.setAttribute("uname",username);
                  session.setAttribute("role",role);
                  response.sendRedirect("View/MasterPage.jsp");
              }
              else
             {
                  response.sendRedirect("View/MasterPage.jsp");
             }
            }
              else
              {
                  out.println("Wrong Password");
              }

           
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }
    
}
