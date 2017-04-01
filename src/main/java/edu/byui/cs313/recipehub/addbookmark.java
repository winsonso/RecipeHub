/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.byui.cs313.recipehub;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author JL5372
 */
@WebServlet(name = "addbookmark", urlPatterns = {"/addbookmark"})
public class addbookmark extends HttpServlet {

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
        HttpSession session = request.getSession();
        List list = (List)session.getAttribute("recipelist");
        Map<String, Object> recipemap = new HashMap<String, Object>();
        
        for(Object recipe : (List)list) {
            if (((Map<String, Object>)recipe).get("id").equals(request.getParameter("id"))){
                recipemap=(Map<String, Object>)recipe;
            }
        }
        String recipe_api_id = recipemap.get("id").toString();
        String recipe_name = recipemap.get("recipeName").toString();
        String ingredients = recipemap.get("ingredients").toString();
        ArrayList<String> images = (ArrayList<String>)recipemap.get("smallImageUrls");
        String image_url = images.get(0);
        
        Integer user_id = (Integer)session.getAttribute("user_id");
        
        bookmarkDBConnection conn = new bookmarkDBConnection(recipe_api_id, recipe_name, ingredients, image_url, user_id);
        String dbResponse = conn.addBookmark();
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addbookmark</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>" + session.getAttribute("user_id")+  " Servlet addbookmark at " + request.getContextPath() + " " + dbResponse + "</h1>");
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
