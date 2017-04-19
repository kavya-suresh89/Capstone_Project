package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.edu.capstone.vo.NamesVO;
import com.edu.capstone.vo.OrderSummaryVO;
import com.edu.capstone.vo.ShoppingCartVO;


public class RetrieveOrderDetailsDAO {
	
	public static ResultSet rs;
	
	@SuppressWarnings("null")
	public static NamesVO retrieveCustomerForOrder(int user_id)throws ParseException
	{
		Connection conn = null;  
	    PreparedStatement pst = null;  
	    rs = null;  
	    NamesVO namevo = null;
	    
	    final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
	    String driver = "com.mysql.jdbc.Driver";  
	    String userName = "root";  
	    String password = "root"; 
	    try {  
	        Class.forName(driver).newInstance();  
	        conn = DriverManager  
	                .getConnection(DB_URL, userName, password);  

	        pst = conn  
	                .prepareStatement("select first_name, last_name from grocery_customer where user_id = ? ");  
	        pst.setInt(1, user_id);
	        rs = pst.executeQuery();
	        
	        //System.out.println("value of rs "+rs.getFetchSize());
	        
	        if(rs != null && rs.next()){
	        	
	        		namevo = new NamesVO();
	        		namevo.setFirstName(rs.getString("first_name"));
	        		namevo.setLastName(rs.getString("last_name"));
	        		//System.out.println("First name is : "+names[0]);
	        		System.out.println("First name from rs : "+rs.getString("first_name"));
	        	
	        	
	        }
	}catch (Exception e) {  
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
	    return namevo;
}
	
	
	public static OrderSummaryVO retrieveCustomerOrderSummary(int user_id, String session_id)throws ParseException{
		Connection conn = null;  
	    PreparedStatement pst = null;  
	    rs = null;  
	    OrderSummaryVO summaryVO = null;
	  
	    
	    final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
	    String driver = "com.mysql.jdbc.Driver";  
	    String userName = "root";  
	    String password = "root"; 
	    try {  
	        Class.forName(driver).newInstance();  
	        conn = DriverManager  
	                .getConnection(DB_URL, userName, password);  

	        pst = conn  
	                .prepareStatement("select * from order_summary where user_id = ? and session_id = ?");  
	        pst.setInt(1, user_id);
	        pst.setString(2, session_id);
	        rs = pst.executeQuery();
	        
	        System.out.println("value of rs "+rs.getFetchSize());
	        
	        if(rs != null && rs.next()){
	        	summaryVO = new OrderSummaryVO();
	        	summaryVO.setOrder_id(rs.getInt("order_id"));
	        	summaryVO.setTotal_items(rs.getInt("order_total_items"));
	        	summaryVO.setTotal_price(rs.getString("order_total_price"));
	        	summaryVO.setOrder_date(rs.getDate("order_date"));
	        	
	        }
	}catch (Exception e) {  
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
	    return summaryVO;
	}

	
	
}



