/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author karnika
 */
@WebServlet(name = "Admin_Change_Password_Servlet", urlPatterns = {"/AdminChangePasswordServlet"})
public class Admin_Change_Password_Servlet extends HttpServlet {

  
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
            
        response.setContentType("text/html;charset=UTF-8");
        final PrintWriter out = response.getWriter();

        String new_pass = request.getParameter("new_password");
        String confirm_pass = request.getParameter("confirm_password");
        
        if(new_pass.equals("confirm_pass"))
        {
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Login.jsp");
            rd.include(request, response);
        }
        else{
           out.println("<script type='text/javascript'>alert('Oops! Password mismatch!')</script>");
        }
    }

    
}
