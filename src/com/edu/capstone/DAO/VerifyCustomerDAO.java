package com.edu.capstone.DAO;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

import sun.security.provider.MD5;

public class VerifyCustomerDAO {
	
	static ResultSet rs ; 

public static int verifyRegisteredCustomer(String email_id, String pwd)throws ParseException, NoSuchAlgorithmException{
    Connection conn = null;  
    PreparedStatement pst = null;  
    rs = null;  
    int reg_user_id = 0;
    String input_pwd = getMD5(pwd);
    
    final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
    String driver = "com.mysql.jdbc.Driver";  
    String userName = "root";  
    String password = "root"; 
    try {  
        Class.forName(driver).newInstance();  
        conn = DriverManager  
                .getConnection(DB_URL, userName, password);  

        pst = conn  
                .prepareStatement("select user_id from grocery_customer where e_mail=?  and password=? ");  
        pst.setString(1, email_id);  
        pst.setString(2, input_pwd);  

        rs = pst.executeQuery();
        
        System.out.println("value of rs "+rs.getFetchSize());
        
        if(rs != null && rs.next()){
        	
        	System.out.println("Generated user Id: "+rs.getInt(1));
            reg_user_id = rs.getInt(1);
        	
            
        }
        


    } catch (Exception e) {  
        System.out.println(e);  
    } finally {  
        if (conn != null) {  
            try {  
                conn.close();  
            } catch (SQLException e) {  
                e.printStackTrace();  
            }  
        }  
        if (pst != null) {  
            try {  
                pst.close();  
            } catch (SQLException e) {  
                e.printStackTrace();  
            }  
        }  
        if (rs != null) {  
            try {  
                rs.close();  
            } catch (SQLException e) {  
                e.printStackTrace();  
            }  
        }  
    }  
    return reg_user_id;  
}

	
	
	 public static String getMD5(String input) {
	        try {
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            byte[] messageDigest = md.digest(input.getBytes());
	            BigInteger number = new BigInteger(1, messageDigest);
	            String hashtext = number.toString(16);
	            // Now we need to zero pad it if you actually want the full 32 chars.
	            while (hashtext.length() < 32) {
	                hashtext = "0" + hashtext;
	            }
	            System.out.println("the encrypted message for login generated is : "+hashtext);
	            return hashtext;
	        }
	        catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	    }
}
