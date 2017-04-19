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
import com.edu.capstone.vo.GroceryCustomerVO;

public class RegisterCustomerDAO {

public static ResultSet rs;
	
	public static int registerCustomer(String first_name, String last_name, String mobile_no, String email, String pwd, String add, String city, String zip, String state)throws ParseException, NoSuchAlgorithmException{
		
		Connection conn = null;  
        PreparedStatement ps = null;  
        rs = null;  
        int gen_user_id = 0;
  
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            
             ps=conn.prepareStatement(  
            		"insert into grocery_customer(first_name, last_name, mobile_no, e_mail, password, address_line, city, zip, state) values(?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);  
            		
            		
            		ps.setString(1, first_name);
            		ps.setString(2, last_name);
            		ps.setString(3, mobile_no);
            		ps.setString(4, email);
            		ps.setString(5, getMD5(pwd));
					ps.setString(6, add);
            		ps.setString(7, city);
            		ps.setString(8, zip);
					ps.setString(9, state);
            		
            		ps.executeUpdate(); 
            		
            		rs = ps.getGeneratedKeys();
                     if(rs != null && rs.next()){
                         System.out.println("Generated user Id: "+rs.getInt(1));
                         gen_user_id = rs.getInt(1);
                     }
        }
        catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            if (conn != null) {  
                try {  
                    conn.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (ps != null) {  
                try {  
                    ps.close();  
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
        return gen_user_id;  
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
	            System.out.println("the encrypted message generated is : "+hashtext);
	            return hashtext;
	        }
	        catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	    }
}
