package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.edu.capstone.vo.ShoppingCartVO;

public class RetrieveCartDetailsDAO {
	
	public static ResultSet rs;
	
	public static List<ShoppingCartVO> retrieveCartDetailsForUser(String session_id){
		Connection conn = null;  
        PreparedStatement pst = null; 
        
        List<ShoppingCartVO> shopCart_list = new ArrayList<ShoppingCartVO>();
        ShoppingCartVO shopVO;
        
        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
         
            	pst = conn  
                    .prepareStatement("select * from order_details where session_id = ? ");  
            	
            	pst.setString(1, session_id);
  
            rs = pst.executeQuery();
            
          //  System.out.println("value of rs "+rs1.getFetchSize());
            
            while(rs.next())
            {     
            	shopVO = new ShoppingCartVO();
            	shopVO.setProduct_id(rs.getInt("productid"));
            	shopVO.setProduct_name(rs.getString("productname"));
            	shopVO.setProduct_price(rs.getString("productprice"));
            	shopVO.setQuantity(rs.getString("quantity"));
            	shopVO.setCount(rs.getInt("count"));
                shopCart_list.add(shopVO);

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
            if (rs != null) {  
                try {  
                    rs.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        } 
        
        return shopCart_list;
	} 
	
	

}
