/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.byui.cs313.recipehub;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zaccianflone
 */
@WebServlet(name = "ValidateLogin", urlPatterns = {"/ValidateLogin"})
public class ValidateLogin extends HttpServlet {

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
       
        //Obtain the session object, create a new session if doesn't exist
        HttpSession session = request.getSession(true);
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rsPassword = "";
        
        try {
                String dbUrl = "jdbc:postgresql://ec2-174-129-41-23.compute-1.amazonaws.com:5432/d7dgs18pf75krp?user=kxnmiindzdmaod&password=40fa571cf0785bbc25b56ae0f82b39676ee66e2fcb97ddadf070d56b833b6ed4&sslmode=disable";
                
          
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "SELECT password FROM person WHERE username = ?";
                
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, username);
           
                
                ResultSet rs = stmt.executeQuery();
                
                 while (rs.next()){
                //there should always be only one result returned since username is unique    
                    rsPassword = rs.getString("password");
                }
                
                
                if (rs == null){
                    
                    response.getWriter().write("Username or Password Didn't Match Our Records!");
                    
                }
                else if (password.equals(rsPassword)){
                    session.setAttribute("username", username);
                    response.getWriter().write("main.jsp"); //arbitrarily chosen 
                }
                else{
                    response.getWriter().write("Incorrect Password!");
                }
               
               
                
                  
                }catch (SQLException ex) {
                
               System.out.println(ex);
               response.getWriter().write("SQL issue");
               
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
