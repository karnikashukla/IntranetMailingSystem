/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author karnika
 */

public class AdminLoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        final PrintWriter out = response.getWriter();

        String username = request.getParameter("adminname");
        String password = request.getParameter("adminpassword");
        
        //username.equals("karnika")&&password.equals("123")
        
        if(AdminLoginDao.validate(username,password))
        {
            HttpSession session = request.getSession(true);	    
            session.setAttribute("currentSessionUser",username); 
            RequestDispatcher rd = request.getRequestDispatcher("Admin_dashboard.jsp");
            rd.include(request, response);
        }
        else
        {
            out.println("<script type='text/javascript'>alert('Username or Password incorrect!')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Login.jsp");
            rd.include(request, response);
        }
    }
}

