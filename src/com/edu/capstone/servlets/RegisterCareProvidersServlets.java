package com.edu.capstone.servlets;

import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.commons.validator.EmailValidator;




import com.edu.capstone.DAO.RegisterProviderDetailsDAO;
import com.edu.capstone.vo.ChildCareProviderVO;

public class RegisterCareProvidersServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		HttpSession session = request.getSession(false); 
		ChildCareProviderVO providerVO = new ChildCareProviderVO();
		String email_Id;
		boolean isValidId;
		//EmailValidator ev = EmailValidator.getInstance();
		
		providerVO.setCatogoryId(Integer.parseInt(request.getParameter("cateogy_id")));
		providerVO.setName(request.getParameter("provider_name"));
		providerVO.setPricePerHr(request.getParameter("per_hour_price"));
		providerVO.setLocation(request.getParameter("location"));
		providerVO.setExperience(request.getParameter("exp_years"));
		providerVO.setDesc((request.getParameter("description")));
		providerVO.setSubjects(request.getParameter("subjects_taught"));
		providerVO.setPhoneNo(request.getParameter("phone_number"));
		
		email_Id = request.getParameter("email_id");
		if(email_Id != null){
			
				providerVO.setEmail(email_Id);
			
		}
		providerVO.setAvailability(request.getParameter("available"));
		providerVO.setMode(request.getParameter("mode_of_teach"));
		providerVO.setImageUrl(request.getParameter("photo_provider"));
		
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
