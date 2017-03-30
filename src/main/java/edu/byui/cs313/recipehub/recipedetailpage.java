/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.byui.cs313.recipehub;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
     Document   : recipedetailpage
    Created on : Mar 29, 2017, 08:50:53 PM
    Author     : winsonso
 */
@WebServlet(name = "recipedetailpage", urlPatterns = {"/recipedetailpage"})
public class recipedetailpage extends HttpServlet {

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
        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        
        String keywords = (String) session.getAttribute("lastkeywords");
        URL url = new URL("http://api.yummly.com/v1/api/recipes?_app_id=4deefe42&_app_key=3b819d845d90d65041e11e3afa106ca0&q=" + keywords);
        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> map = mapper.readValue(url, Map.class);
        List list = (List)map.get("matches");
        List<String> _class = new ArrayList<String>(Arrays.asList("warning", "danger", "success", "info", "primary", "warning"));
        Map<String, Object> mappy = new HashMap<String, Object>();
        
        for(Object tempObj: (ArrayList<?>) list) {
            if(((Map<String, Object>)tempObj).get("id").equals(request.getParameter("id"))) {                
                mappy = (Map<String, Object>) tempObj;
            }
        }
        session.setAttribute("_class", _class);
        session.setAttribute("mappy", mappy);
        response.sendRedirect("recipedetails.jsp");         
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
