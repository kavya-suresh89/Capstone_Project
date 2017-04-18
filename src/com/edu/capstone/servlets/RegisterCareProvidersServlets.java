package com.edu.capstone.servlets;

import javax.servlet.http.HttpServlet;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.Blob;
import java.text.ParseException;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;

//import org.apache.commons.validator.EmailValidator;




import com.edu.capstone.DAO.RegisterProviderDetailsDAO;
import com.edu.capstone.vo.ChildCareProviderVO;

import sun.misc.FormattedFloatingDecimal.Form;
@WebServlet
@MultipartConfig
public class RegisterCareProvidersServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		HttpSession session = request.getSession(false); 
		ChildCareProviderVO providerVO = new ChildCareProviderVO();
		String email_Id;
		String photo;
		boolean isValidId;
		//File uploads = new File(getServletContext().getInitParameter("upload.location"));
		//EmailValidator ev = EmailValidator.getInstance();
		 //MultipartFormDataRequest nreq = new MultipartFormDataRequest(request);
		providerVO.setCategoryid(Integer.parseInt(request.getParameter("cateogy_id")));
		
		providerVO.setName(request.getParameter("provider_name"));
		providerVO.setPrice_per_hour(request.getParameter("per_hour_price"));
		providerVO.setLocation(request.getParameter("location"));
		providerVO.setExperience(request.getParameter("exp_years"));
		providerVO.setDescription((request.getParameter("description")));
		providerVO.setSubjects(request.getParameter("subjects_taught"));
		providerVO.setPhonenumber(request.getParameter("phone_number"));
		
		email_Id = request.getParameter("email_id");
		if(email_Id != null){
			
				providerVO.setEmail(email_Id);
			
		}
		providerVO.setAvailable(request.getParameter("available"));
		providerVO.setMode(request.getParameter("mode_of_teach"));
		 Part part = request.getPart("photo_provider");
		 
		//photo =request.getParameter("photo_provider");
		InputStream input= part.getInputStream();
	//Blob blob = new SerialBlob(input.);
		
				ByteArrayOutputStream buffer = new ByteArrayOutputStream();

				int nRead;
				byte[] data = new byte[16384];

				while ((nRead = input.read(data, 0, data.length)) != -1) {
				  buffer.write(data, 0, nRead);
				}

				buffer.flush();

				
		byte[ ] imgData = null ; 
	    imgData = buffer.toByteArray();
	    
	    System.out.println("imgdata_register"+imgData.toString());
	    String imgDataBase64=Base64.getEncoder().encodeToString(imgData);;
	    System.out.println("imgDataBase64"+imgDataBase64);
	    providerVO.setImage(imgDataBase64);
		try {
			if(RegisterProviderDetailsDAO.registerProviderCredentials(providerVO)){
				request.setAttribute("success_message", "Successfully registered a provider");
				RequestDispatcher rd=request.getRequestDispatcher("RegisterChildCareProviders.jsp");    
			      rd.forward(request,response);
			}
			else{
				   
			       request.setAttribute("errorMessage", "This provider could not be registered!");
			       RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterChildCareProviders.jsp");
				   requestDispatcher.forward(request, response);
				   return;
			      }
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//System.out.println("The provider details are : "+providerVO.getCatogoryId()+"\n"+providerVO.getName() +"\n"+providerVO.getDesc());
		
	}

}
