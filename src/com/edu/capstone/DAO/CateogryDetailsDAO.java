package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.edu.capstone.vo.CategoryDetailsVO;


public class CateogryDetailsDAO {
	
public static CategoryDetailsVO retrieveCategoryDetails(int category_id) {  
		
		Connection conn = null;  
        PreparedStatement pst = null;   
		ResultSet rs = null;
		CategoryDetailsVO detailsVO = null;
		
		
		final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
  
            pst = conn  
                    .prepareStatement("select * from category where categoryid = ?");  
            pst.setInt(1, category_id);
              
            
  
            rs = pst.executeQuery();
            
            System.out.println("value of rs "+rs.getFetchSize());
            
            while(rs.next())
            {     
            	detailsVO = new CategoryDetailsVO();
                detailsVO.setCategoryId(rs.getInt("categoryid"));
                detailsVO.setCategoryName(rs.getString("categoryname"));
                detailsVO.setParentId(rs.getInt("parentid"));
                
                
                //System.out.println( "the category name is returned are : "+rs.getString("categoryname"));
        	
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
       
		
		
		return detailsVO;
		
		
	
	}

}
