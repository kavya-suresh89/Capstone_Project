package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.edu.capstone.vo.ShoppingCartVO;

public class RemoveFromCartDAO {

public static int rs;
	
	public static boolean removeCartDetailsForUser(int order_id){
		Connection conn = null;  
        PreparedStatement pst = null; 
        boolean status = false;
       
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
         
            	pst = conn  
                    .prepareStatement("delete from order_details where productid = "+order_id);              
  
            rs = pst.executeUpdate();
            
          //  System.out.println("value of rs "+rs1.getFetchSize());
            if(rs != 0){
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
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            
        } 
        
        return status;
	} 

}

