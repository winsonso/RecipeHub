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

/**
 *
 * @author zaccianflone
 */
@WebServlet(name = "Signup", urlPatterns = {"/Signup"})
public class Signup extends HttpServlet {

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
        
        response.setContentType("text/plain");
        
        String firstName = request.getParameter("signupFirstName");
        String lastName = request.getParameter("signupLastName");
        String username = request.getParameter("signupUsername");
        String email = request.getParameter("signupEmail");
        String password  = request.getParameter("newPassword");
        
        
         
        
        try {
                String dbUrl = "jdbc:postgresql://ec2-174-129-41-23.compute-1.amazonaws.com:5432/d7dgs18pf75krp?user=kxnmiindzdmaod&password=40fa571cf0785bbc25b56ae0f82b39676ee66e2fcb97ddadf070d56b833b6ed4&sslmode=disable";
                
          
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "INSERT INTO person (first_name, last_name, email, username, password) VALUES (?, ?, ?, ?, ?)";
                
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, firstName);
                stmt.setString(2, lastName);
                stmt.setString(3, email);
                stmt.setString(4, username);
                stmt.setString(5, password);
                
                int rows = stmt.executeUpdate();
                
                System.out.println("Rows impacted :" + rows);
                
                response.getWriter().write("User Created Successfully!");
                  
                }catch (SQLException ex) {
                
               System.out.println(ex);
               response.getWriter().write("Unable to Create User -- Try Another Username");
               
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
