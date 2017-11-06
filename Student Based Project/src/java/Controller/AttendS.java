package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author badon
 */

public class AttendS extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
          PrintWriter out = response.getWriter();
          
          try
          {
           String name = request.getParameter("name");
           String date = request.getParameter("date");
           String checkin = request.getParameter("in");
           String checkout = request.getParameter("out");
       
           Class.forName("org.h2.Driver");
           Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
           PreparedStatement pmt = conn.prepareStatement("insert into Attendencs values(?,?,?,?)");
          
           pmt.setString(1,name);
           pmt.setString(2,date);
           pmt.setString(3,checkin);
           pmt.setString(4,checkout);
           
           int a=pmt.executeUpdate();
           
           response.sendRedirect("View/ShowAttnd.jsp");
       
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
