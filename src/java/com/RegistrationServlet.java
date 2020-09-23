package com;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author karnika
 */
public class RegistrationServlet extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        try 
        {
            final PrintWriter out = response.getWriter();

            response.setContentType("text/html;charset=UTF-8");
            
            String fname =  request.getParameter("fname");
            String lname =  request.getParameter("lname");
            String email =  request.getParameter("email");
            String alt_email = request.getParameter("altr_email");
            String contact = request.getParameter("phn_number");
            String bdate =  request.getParameter("bdate");
            String password = request.getParameter("create_pass");
            String confirm_password = request.getParameter("password");
            
            if(password.equals("confirm_password"))
            {
                if(RegistrationDao.Register(fname,lname,email,alt_email,contact,bdate,password))
                {
                    out.println("<script type='text/javascript'>alert('You have registered successfully!!')</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("User_Login.jsp");
                    rd.include(request, response);
                }
                else
                {
                    out.println("<script type='text/javascript'>alert('Oops! Please enter valid data to register!')</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("User_Registration.jsp");
                    rd.include(request, response);
                }
                
            }
            else{
                out.println("<script type='text/javascript'>alert('Oops! Password mismatch!')</script>");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
    
