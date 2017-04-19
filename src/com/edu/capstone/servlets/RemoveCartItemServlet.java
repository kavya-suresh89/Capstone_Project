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

import com.edu.capstone.DAO.RemoveFromCartDAO;
import com.edu.capstone.DAO.RetrieveCartDetailsDAO;
import com.edu.capstone.vo.ShoppingCartVO;

/**
 * Servlet implementation class RemoveCartItemServlet
 */
@WebServlet("/RemoveCartItemServlet")
public class RemoveCartItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static DecimalFormat df2 = new DecimalFormat(".##");
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveCartItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
	      boolean result;
	      int prod_order_id;
	      String[] quantity_value = null;
	      double total_price = 0;
	      int number_of_items = 0;
	      int user_id = (Integer)session.getAttribute("user_id");
	      //int order_id = (Integer)session.getAttribute("order_id");
	      if(session.getAttribute("product_id")== null){
	    	  prod_order_id = Integer.parseInt(request.getParameter("product_id"));
	      }
	      else{
	    	  prod_order_id = (Integer)session.getAttribute("product_id");
	      }
	      result = RemoveFromCartDAO.removeCartDetailsForUser(prod_order_id);
	      if(result){
	    	  List<ShoppingCartVO> ordered_details = new ArrayList<ShoppingCartVO>();
		      ordered_details = RetrieveCartDetailsDAO.retrieveCartDetailsForUser(request.getSession().getId());
		      session.setAttribute("cart_order", ordered_details);
		      session.setAttribute("user_id", user_id);
		      
		      if(ordered_details != null){
		    	  for(ShoppingCartVO cartVo : ordered_details){
		    		  number_of_items = number_of_items + cartVo.getCount();
		    		  quantity_value = cartVo.getProduct_price().split("\\$");
		    		  System.out.println("the quantity values are : "+quantity_value[1]);
		    		  total_price += Double.parseDouble(quantity_value[1]);
		    	  }
		      }
		    	  
		    session.setAttribute("number_of_items", number_of_items);
		    session.setAttribute("total_price", df2.format(total_price));
		    System.out.println("total number of items in the cart are : "+number_of_items);
		    System.out.println("total price of cart is : "+total_price);
		    

		      
			  rd=request.getRequestDispatcher("CartDetails.jsp");    
		      rd.forward(request,response);
		  
	      }
	      out.close();	

	}

}
