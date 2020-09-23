/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author karnika
 */
public class UserLoginDao {
    
    public static boolean validate(String username , String password)
    {
            Connection conn = null;
            boolean status = false;
            //setting the connection
                try
                {
                      	Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/intranet_mailing?serverTimezone=UTC","root","");
			System.out.println("Connection Sucessfull");
//                        String sql = "select * from tbl_users where f_name = ? and password = ?";
                        final PreparedStatement stmt = conn.prepareStatement("select * from tbl_users where f_name = ? and password = ?");
                        
                        stmt.setString(1, username);
                        stmt.setString(2, password);
                        final ResultSet rs = stmt.executeQuery();
                        status = rs.next();
                                       
                }
		catch(Exception e)
		{
			System.out.println("Error : " + e.toString());
                }       
                return status;
    }
    
}
