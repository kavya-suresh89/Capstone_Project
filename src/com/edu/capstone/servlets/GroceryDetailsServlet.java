package com.edu.capstone.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.edu.capstone.DAO.CateogryDetailsDAO;
import com.edu.capstone.DAO.GroceriesDetailsDAO;
import com.edu.capstone.vo.CategoryDetailsVO;
import com.edu.capstone.vo.ProductDetailsVO;

/**
 * Servlet implementation class GroceryDetailsServlet
 */

public class GroceryDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GroceryDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
	      HttpSession session = request.getSession(false);
	      Integer category_id = null;
	      String category_name;
	      CategoryDetailsVO cat_details = new CategoryDetailsVO();
		  RequestDispatcher rd = null;
		  List<ProductDetailsVO> product_list = new ArrayList<ProductDetailsVO>();
		  if(request.getParameter("categoryid") != null){
			  category_id  = (Integer.parseInt(request.getParameter("categoryid")));
			  }
		  System.out.println("the received second category_id is : "+ category_id);
		  product_list = GroceriesDetailsDAO.retrieveGroceryDetails(category_id);
		  cat_details = CateogryDetailsDAO.retrieveCategoryDetails(category_id);
		  category_name = cat_details.getCategoryName();
		  System.out.println("the category name is : "+cat_details.getCategoryName());
		  //product_list.add((ProductDetailsVO) GroceriesDetailsDAO.retrieveGroceryDetails(category_id));
		  System.out.println("the product list size is : "+product_list.size());
		  if(product_list != null ){
			  System.out.println("product details are : "+product_list.get(2).getProductName());
			  session.setAttribute("product_details", product_list);
			  session.setAttribute("category_name",category_name);
			  response.sendRedirect("DetailsOfGrocery.jsp");
		  }
		  out.close();		  
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
	      HttpSession session = request.getSession(false);
	      Integer category_id = null;
	      String category_name;
	      CategoryDetailsVO cat_details = new CategoryDetailsVO();
		  
		  RequestDispatcher rd = null;
		  List<ProductDetailsVO> product_list = new ArrayList<ProductDetailsVO>();
		  if(request.getParameter("categoryid") != null){
		  category_id  = (Integer.parseInt(request.getParameter("categoryid")));
		  }
		  System.out.println("the received category_id is : "+ category_id);
		  product_list = GroceriesDetailsDAO.retrieveGroceryDetails(category_id);
		  cat_details = CateogryDetailsDAO.retrieveCategoryDetails(category_id);
		  category_name = cat_details.getCategoryName();
		  System.out.println("the product list size is : "+product_list.size());
		  System.out.println("product details are : "+product_list.get(2).getProductName());
		  session.setAttribute("product_details", product_list);
		  session.setAttribute("category_name",category_name);
		  session.setAttribute("category_id", category_id);
		  session.setAttribute("session_id", request.getSession().getId());
		  response.sendRedirect("DetailsOfGrocery.jsp");
		  out.close();		  
	}

}
