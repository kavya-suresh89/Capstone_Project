package com.edu.capstone.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.capstone.DAO.RetrieveChildCareDetailsDAO;
import com.edu.capstone.vo.ChildCareProviderVO;

/**
 * Servlet implementation class ChildCareService
 */
@WebServlet("/ChildCareServlet")
public class ChildCareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChildCareServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		        List<ChildCareProviderVO> childCareList = new ArrayList<ChildCareProviderVO>();
		        
		        
		        Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
		        
		        childCareList = RetrieveChildCareDetailsDAO.retrieveChildCareDetails(categoryId);
		        System.out.println("the category id is : "+categoryId);
		 
		        if (childCareList != null){
		        	 request.setAttribute("childCareList", childCareList);
		        }
		        
		       
		        RequestDispatcher tutorview = request.getRequestDispatcher("ChildCareServices.jsp");
		        tutorview.forward(request, response);
		       
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
