
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

public class ProfileS extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        PrintWriter out = response.getWriter();
        try
        {
            HttpSession session = request.getSession(true);
            String uname= (String) session.getAttribute("name");                     
           
              Class.forName("org.h2.Driver");
              Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
              PreparedStatement pmt = conn.prepareStatement("select * from Register where USERNAME = ?");
              pmt.setString(1, uname);
              ResultSet rs=pmt.executeQuery();
            
              while(rs.next())
            {
              String username=rs.getString(1);
              String firstname=rs.getString(2);
              String lastname=rs.getString(3);
              String email=rs.getString(4);
              String mobile=rs.getString(5);
              String gender=rs.getString(6);
              String dateofbirth=rs.getString(7);
              String password=rs.getString(8);
              String role= rs.getString(9);
            
                  session.setAttribute("name",username);
                  session.setAttribute("ftname",firstname);
                  session.setAttribute("ltname",lastname);
                  session.setAttribute("email",email);
                  session.setAttribute("mobile",mobile);
                  session.setAttribute("gender",gender);
                  session.setAttribute("dob",dateofbirth);
                  session.setAttribute("pass",password);
                  session.setAttribute("role",role);
                  
                  response.sendRedirect("View/Profile.jsp");
                  
                  
                  
                  
                  
                  
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

}
