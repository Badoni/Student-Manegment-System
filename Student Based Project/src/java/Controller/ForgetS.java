/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author badon
 */
public class ForgetS extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgetS</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgetS at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
            throws ServletException, IOException 
    {
       PrintWriter out = response.getWriter();
       
       String username = request.getParameter("username");
       String cpassword = request.getParameter("cpassword");
       String npassword = request.getParameter("npassword");
       try
       {
           Class.forName("org.h2.Driver");
           Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/StudentProject","hr","hr");
           PreparedStatement pmt = conn.prepareStatement("select * from Register");
         
           ResultSet rs=pmt.executeQuery();  
           while(rs.next())
           {
                     String user  = rs.getString("USERNAME");
                     String email  = rs.getString("EMAIL");
                     String password  = rs.getString("PASSWORD");
                     
                     if(username.equals(user) && cpassword.equals(password))
                     {
                         PreparedStatement stmt=conn.prepareStatement("update Register set password=? where username=?");  
                         stmt.setString(1,npassword);  
                         stmt.setString(2,username); 
                         
                         int i=stmt.executeUpdate();  
                         response.sendRedirect("View/MasterPage.jsp");
                     }
                     else
                     {
                         out.println("Your give wrong details");
                     }
           }
       
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
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
