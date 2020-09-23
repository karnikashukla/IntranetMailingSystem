package com;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author karnika
 */
public class RegistrationDao {
        
    public static boolean Register(String fname,String lname,String email,String alt_email ,String contact,String bdate,String password)
    {
        
        int i = 0;
        Connection conn = null;
        Boolean status = true;
        try{
                //Connection
               	Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/intranet_mailing?serverTimezone=UTC","root","");
		System.out.println("Connection Sucessfull");
                
                //Query
                
                String query = "insert into tbl_users(Id,f_name,l_name,email,altr_email_id,password,BirthDate,Phone_number) values (null,?,?,?,?,?,?,?)";
            
                final PreparedStatement ps = conn.prepareStatement(query);
                
                ps.setString(1, fname);
                ps.setString(2, lname);
                ps.setString(3, email);
                ps.setString(4, alt_email);
                ps.setString(5, password);
                ps.setString(6, bdate);
                ps.setString(7, contact);
               
                i = ps.executeUpdate();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        if(i>0)
            return true;
        else
            return false;
    }   
}
