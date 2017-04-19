package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.edu.capstone.vo.ProductDetailsVO;

public class GroceriesDetailsDAO {
	
	public static List<ProductDetailsVO> retrieveGroceryDetails(int cateogryId) {  
		
		Connection conn = null;  
        PreparedStatement pst = null;   
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		List<ProductDetailsVO> prod_details = new ArrayList<ProductDetailsVO>();
		ProductDetailsVO detailsVO;
		
		final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
  
            pst = conn  
                    .prepareStatement("select * from product where categoryid=?  ");  
            pst.setInt(1, cateogryId);  
            
  
            rs1 = pst.executeQuery();
            
           // System.out.println("value of rs "+rs1.getFetchSize());
            
            while(rs1.next())
            {        
            	detailsVO = new ProductDetailsVO();
                detailsVO.setProductId(rs1.getInt(1));
                detailsVO.setCategoryId(rs1.getInt(2));
                detailsVO.setProductName(rs1.getString(3));
                detailsVO.setProductPrice(rs1.getString(4));
                detailsVO.setListPrice(rs1.getString(5));
                detailsVO.setImageName(rs1.getString(6));
                detailsVO.setImageUrl(rs1.getString(7));
                detailsVO.setQuantity(rs1.getString(8));
                
                
                //System.out.println( "the product ids returned are : "+rs1.getInt(1));
                prod_details.add(detailsVO);
                //System.out.println("The product details inside the DAO are : "+detailsVO.getProductName());
        	
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
            if (rs1 != null) {  
                try {  
                    rs1.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
       
		
		System.out.println("product final details :"+prod_details.get(2).getProductName());
		return prod_details;
		
		
	
	}
	
	
public static List<ProductDetailsVO> retrieveGroceryCartDetails(String productname) {  
		
		Connection conn = null;  
        PreparedStatement pst = null;   
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		List<ProductDetailsVO> prod_details = new ArrayList<ProductDetailsVO>();
		ProductDetailsVO detailsVO;
		
		final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "root";  
        try {  
        	
        	Class.forName(driver).newInstance();  
            conn = DriverManager  
                    .getConnection(DB_URL, userName, password);  
            
            	pst = conn  
                    .prepareStatement("select * from product where productname=?  ");  
            	pst.setString(1, productname);  
            
  
            rs1 = pst.executeQuery();
            
          //  System.out.println("value of rs "+rs1.getFetchSize());
            
            while(rs1.next())
            {        
            	detailsVO = new ProductDetailsVO();
                detailsVO.setProductId(rs1.getInt("productid"));
                detailsVO.setCategoryId(rs1.getInt("categoryid"));
                detailsVO.setProductName(rs1.getString("productname"));
                detailsVO.setProductPrice(rs1.getString("productprice"));
                detailsVO.setListPrice(rs1.getString("listprice"));
                detailsVO.setImageName(rs1.getString("imagename"));
                detailsVO.setImageUrl(rs1.getString("imagepath"));
                detailsVO.setQuantity(rs1.getString("quantity"));
                
                
                //System.out.println( "the product ids returned are : "+rs1.getInt(1));
                prod_details.add(detailsVO);
                //System.out.println("The product details inside the DAO are : "+detailsVO.getProductName());
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
            if (rs1 != null) {  
                try {  
                    rs1.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
       
		
		//System.out.println("product final details :"+prod_details.get(0).getProductName());
		return prod_details;
		
		
	
	}
}
