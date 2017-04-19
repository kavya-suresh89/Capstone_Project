package com.edu.capstone.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.edu.capstone.DAO.RetrieveCartDetailsDAO;
import com.edu.capstone.vo.ShoppingCartVO;

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

import com.edu.capstone.vo.ShoppingCartVO;

/**
 * Servlet implementation class RetrieveCartDetailsServlet
 */
@WebServlet("/RetrieveCartDetailsServlet")
public class RetrieveCartDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DecimalFormat df2 = new DecimalFormat(".##");

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveCartDetailsServlet() {
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
	      RequestDispatcher rd = null;
	      int user_id = (Integer)session.getAttribute("user_id");
	      String[] quantity_value = null;
	      double total_price = 0;
	      int number_of_items = 0;
	      String session_id = request.getParameter("session_id");
	      System.out.println("Retrieving cart details session id : "+ session_id);
	      List<ShoppingCartVO> ordered_details = new ArrayList<ShoppingCartVO>();
	      ordered_details = RetrieveCartDetailsDAO.retrieveCartDetailsForUser(session_id);
	      session.setAttribute("cart_order", ordered_details);
	      session.setAttribute("user_id", user_id);
		  
	      
	      if(ordered_details != null){
	    	  for(ShoppingCartVO cartVo : ordered_details){
	    		  number_of_items = number_of_items + cartVo.getCount();
	    		  quantity_value = cartVo.getProduct_price().split("\\$");
	    		  System.out.println("the quantity values are : "+quantity_value[1]);
	    		  total_price = total_price + (Double.parseDouble(quantity_value[1]) * cartVo.getCount());
	    	  }
	      }
	    	  else{
	    		  session.setAttribute("message", "There are no more items in the cart");
	    	  }
	    	  
	    session.setAttribute("number_of_items", number_of_items);
	    session.setAttribute("total_price", df2.format(total_price));
	    session.setAttribute("session_id", session_id);
	    System.out.println("total number of items in the cart are : "+number_of_items);
	    System.out.println("total price of cart is : "+total_price);
	    if(number_of_items != 0){
	    	response.sendRedirect("CartDetails.jsp");	
	    }
	    else{
	    	rd=request.getRequestDispatcher("DetailsOfGrocery.jsp");    
		    rd.forward(request,response);
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
	      RequestDispatcher rd = null;
	      int user_id = (Integer)session.getAttribute("user_id");
	      String[] quantity_value = null;
	      double total_price = 0;
	      int number_of_items = 0;
	      String session_id = request.getParameter("session_id");
	      List<ShoppingCartVO> ordered_details = new ArrayList<ShoppingCartVO>();
	      ordered_details = RetrieveCartDetailsDAO.retrieveCartDetailsForUser(session_id);
	      System.out.println("Retrieving cart details session id : "+ session_id);
	      session.setAttribute("cart_order", ordered_details);
	      session.setAttribute("user_id", user_id);
		  
	      
	      if(ordered_details != null){
	    	  for(ShoppingCartVO cartVo : ordered_details){
	    		  number_of_items = number_of_items + cartVo.getCount();
	    		  quantity_value = cartVo.getProduct_price().split("\\$");
	    		  System.out.println("the quantity values are : "+quantity_value[1]);
	    		  total_price = total_price + (Double.parseDouble(quantity_value[1]) * cartVo.getCount());
	    	  }
	      }
	    	  else{
	    		  session.setAttribute("message", "There are no more items in the cart");
	    	  }
	    	  
	    session.setAttribute("number_of_items", number_of_items);
	    session.setAttribute("total_price", df2.format(total_price));
	    session.setAttribute("session_id", session_id);
	    System.out.println("total number of items in the cart are : "+number_of_items);
	    System.out.println("total price of cart is : "+total_price);
	    if(number_of_items != 0){
	    	response.sendRedirect("CartDetails.jsp");	
	    }
	    else{
	    	rd=request.getRequestDispatcher("DetailsOfGrocery.jsp");    
		    rd.forward(request,response);
	    }
	    out.close();	
	}

}




