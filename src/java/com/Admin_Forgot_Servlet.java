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
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author karnika
 */
@WebServlet(name = "Admin_Forgot_Servlet", urlPatterns = {"/AdminForgotServlet"})
public class Admin_Forgot_Servlet extends HttpServlet {
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

        Random rand = new Random();
        int otp = rand.nextInt(900000) + 100000;
        HttpSession session = null;
        session.setAttribute("generated_otp",otp);
        
        String contact_number = request.getParameter("contact");
        Connection conn = null;
        boolean st = false;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mailing_data?serverTimezone=UTC","root","");
			System.out.println("Connection Sucessfull");
                        String sql = "select * from tbl_admin where mobile_number='"+contact_number+"'";
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        //Retrieving the result
                        st = rs.next();
                        if(st == true)
                        {
                            RequestDispatcher rd = request.getRequestDispatcher("Admin_Change_Password_otp.jsp");
                            rd.include(request, response);
                        }
                        else
                        {
                            out.println("<script type='text/javascript'>alert('Mobile number not recognized.!')</script>");
                        }
        }
        catch(Exception e){
            System.out.println("Error : " + e.toString());
        }
    }

}
