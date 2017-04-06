package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

import com.edu.capstone.vo.ChildCareProviderVO;

public class RegisterProviderDetailsDAO {

	public static ResultSet rs;
	
	public static boolean registerProviderCredentials(ChildCareProviderVO childVO)throws ParseException{
		boolean status = false;
		Connection conn = null;  
        PreparedStatement ps = null;  
        rs = null;  
  
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            
             ps=conn.prepareStatement(  
            		"insert into childcare(categoryid, name, price_per_hour, location, experience, description, subjects, phonenumber, email, available, mode, image) values(?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);  
            		
            		
            		ps.setInt(1,childVO.getCatogoryId());
            		ps.setString(2, childVO.getName());
            		ps.setString(3, childVO.getPricePerHr());
            		ps.setString(4, childVO.getLocation());
            		ps.setString(5,childVO.getExperience());
					ps.setString(6, childVO.getDesc());
            		ps.setString(7, childVO.getSubjects());
            		ps.setString(8, childVO.getPhoneNo());
					ps.setString(9, childVO.getEmail().toLowerCase());
            		ps.setString(10, childVO.getAvailability());
            		ps.setString(11, childVO.getMode());
            		ps.setString(12, childVO.getImageUrl());
            		
            		ps.executeUpdate(); 
            		
            		
            		rs = ps.getGeneratedKeys();
                     if(rs != null && rs.next()){
                         System.out.println("Generated user Id: "+rs.getInt(1));
                         status = true;
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
        return status;  
} 
}
