package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;


public class AddToShoppingCartDAO {

public static int rs;

	
	public static int addProductToShoppingCart(int product_id, String product_name, String product_price, String product_quantity, String session_id)throws ParseException{
		Connection conn = null;  
        PreparedStatement ps = null;  
        rs = 0;  
  
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            
             ps=conn.prepareStatement(  
            		"insert into order_details(productid, productname, productprice, quantity, session_id) values(?,?,?,?,?) ON DUPLICATE KEY UPDATE count = count + 1;");  
            		
            		
            		ps.setInt(1, product_id);
            		ps.setString(2, product_name);
            		ps.setString(3, product_price);
            		ps.setString(4, product_quantity);
            		ps.setString(5,  session_id);
            		
					
            		
            		rs = ps.executeUpdate(); 
            		System.out.println("no of affected rows are : "+rs);
                     
           
	
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
            
        }  
        
        return rs;
         
} 
	
	
	public static int countNumberOfItems(String session_id)throws ParseException{
		Connection conn = null;  
        PreparedStatement ps = null;  
        ResultSet rs = null; 
        int total_items = 0; 
  
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            
             ps=conn.prepareStatement(  
            		"select sum(count)as total from order_details where session_id = ?"); 
             ps.setString(1, session_id);
             rs = ps.executeQuery();
                     if(rs != null && rs.next()){
                         System.out.println("number of items is : " +rs.getInt("total"));
                         total_items = rs.getInt("total");
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
        return total_items;  
} 
}
