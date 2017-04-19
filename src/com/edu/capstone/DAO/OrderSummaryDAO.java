package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class OrderSummaryDAO {

	public static ResultSet rs;
	public static int addDetailsToOrderSummary(int order_count, String order_total, String session_id)throws ParseException{
		Connection conn = null;  
        PreparedStatement ps = null;  
        rs = null; 
        int generated_order_id = 0;
        boolean status = false;
        long millis=System.currentTimeMillis();  
        java.sql.Date date=new java.sql.Date(millis);  
        System.out.println(date);  
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            
             ps=conn.prepareStatement(  
            		"insert into order_summary(order_total_items, order_total_price, order_date, session_id) values(?,?,?,?)", Statement.RETURN_GENERATED_KEYS);  

            		ps.setInt(1, order_count);
            		ps.setString(2, order_total );
            		ps.setDate(3, date);
            		ps.setString(4, session_id);
            		

                    ps.executeUpdate(); 

            		rs = ps.getGeneratedKeys();
                     if(rs != null && rs.next()){
                         System.out.println("Generated order Id: "+rs.getInt(1));
                         status = true;
                         generated_order_id = rs.getInt(1);
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
            
        }  
        
        return generated_order_id;
         
} 
	
	
	public static boolean updateOrderSummary(int user_id, int order_id){
		Connection conn = null;  
        PreparedStatement pst = null; 
        boolean status = false;
        int rs1;
        
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
         
            	pst = conn  
                    .prepareStatement("update order_summary set user_id = "+user_id+" where order_id = "+order_id+";");              
  
            rs1 = pst.executeUpdate();
            
          //  System.out.println("value of rs "+rs1.getFetchSize());
            if(rs1 != 0){
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
