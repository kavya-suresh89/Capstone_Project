package com.edu.capstone.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import java.io.InputStream;
import java.io.OutputStream;

import com.edu.capstone.vo.ChildCareProviderVO;
import com.mysql.jdbc.Blob;


public class RetrieveChildCareDetailsDAO {

	
	
	 
	 public static List<ChildCareProviderVO> retrieveChildCareDetails(int category_id) {          
	       
	        Connection conn = null;  
	        PreparedStatement pst = null;  
	        ResultSet rs = null;  
	        List<ChildCareProviderVO> childcare_list= new ArrayList<ChildCareProviderVO>();
	        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
	        String driver = "com.mysql.jdbc.Driver";  
	        String userName = "root";  
	        String password = "root";  
	        try {  
	            Class.forName(driver).newInstance();  
	            conn = DriverManager  
	                    .getConnection(DB_URL, userName, password);  
	  
	            System.out.println("category Id is "+category_id);
	            pst = conn  
	                    .prepareStatement("select * from ChildCare where categoryid="+category_id);
	        
	            
	            rs = pst.executeQuery();
	            
	            System.out.println("value of rs "+rs.getFetchSize());
	            
	            while(rs != null && rs.next()){
	            	
	                
	            	ChildCareProviderVO childcare = new ChildCareProviderVO();
	            	childcare.setIdChildCare(Integer.parseInt(rs.getString("idChildCare")));
	            	childcare.setCategoryid(Integer.parseInt(rs.getString("categoryid")));
	            	childcare.setName(rs.getString("name"));
	            	childcare.setDescription(rs.getString("description"));
	            	childcare.setLocation(rs.getString("location"));
	            	childcare.setEmail(rs.getString("email"));
	            	childcare.setPhonenumber(rs.getString("phonenumber"));
	            	childcare.setExperience(rs.getString("experience"));
	            	childcare.setSubjects(rs.getString("subjects"));
	            	childcare.setAvailable(rs.getString("available"));
	            	childcare.setPrice_per_hour(rs.getString("price_per_hour"));
	            	childcare.setMode(rs.getString("mode"));
//	              	    Blob image = (Blob) rs.getBlob("image");
//	            	    byte[ ] imgData = null ; 
//	            	    imgData = rs.getBytes("image");
//	            	    
//	            	    System.out.println("imgdata"+imgData.toString());
	            	    String imgDataBase64=rs.getString("image");;
	            	    System.out.println("imgDataBase64"+imgDataBase64);
//imgDataBase64="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";
	            	    childcare.setImage(imgDataBase64);
	            	    childcare_list.add(childcare);
	            	
	                
	            }
	           System.out.println("List size"+childcare_list.size()) ;
	 
	  
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
	        return childcare_list;  
	    }    

	 public static ChildCareProviderVO retrieveChildCareProvider(int childCareId) {          
	       
	        Connection conn = null;  
	        PreparedStatement pst = null;  
	        ResultSet rs = null;  
	        ChildCareProviderVO childcareProvider= new ChildCareProviderVO();
	        final String DB_URL="jdbc:mysql://127.0.0.1:3306/atyourservice"; 
	        String driver = "com.mysql.jdbc.Driver";  
	        String userName = "root";  
	        String password = "root";  
	        try {  
	            Class.forName(driver).newInstance();  
	            conn = DriverManager  
	                    .getConnection(DB_URL, userName, password);  
	  
	            System.out.println("childcare Id is "+childCareId);
	            pst = conn  
	                    .prepareStatement("select * from ChildCare where idChildCare="+childCareId);
	        
	            
	            rs = pst.executeQuery();
	            
	            System.out.println("value of rs "+rs.getFetchSize());
	            
	            if(rs != null && rs.next()){
	            	
	                
	            	
	            	childcareProvider.setIdChildCare(Integer.parseInt(rs.getString("idChildCare")));
	            	childcareProvider.setCategoryid(Integer.parseInt(rs.getString("categoryid")));
	            	childcareProvider.setName(rs.getString("name"));
	            	childcareProvider.setDescription(rs.getString("description"));
	            	childcareProvider.setLocation(rs.getString("location"));
	            	childcareProvider.setEmail(rs.getString("email"));
	            	childcareProvider.setPhonenumber(rs.getString("phonenumber"));
	            	childcareProvider.setExperience(rs.getString("experience"));
	            	childcareProvider.setSubjects(rs.getString("subjects"));
	            	childcareProvider.setAvailable(rs.getString("available"));
	            	childcareProvider.setPrice_per_hour(rs.getString("price_per_hour"));
	            	childcareProvider.setMode(rs.getString("mode"));
//	              	    Blob image = (Blob) rs.getBlob("image");
//	            	    byte[ ] imgData = null ; 
//	            	    imgData = rs.getBytes("image");
//	            	    
//	            	    System.out.println("imgdata"+imgData.toString());
	            	    String imgDataBase64=rs.getString("image");;
	            	    System.out.println("imgDataBase64"+imgDataBase64);
//imgDataBase64="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";
	            	    childcareProvider.setImage(imgDataBase64);
	            	    
	            	
	                
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
	        return childcareProvider;  
	    }  
	            	
	
}