package com.edu.capstone.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.edu.capstone.DAO.AddToShoppingCartDAO;
import com.edu.capstone.DAO.GroceriesDetailsDAO;
import com.edu.capstone.vo.ProductDetailsVO;
import com.edu.capstone.vo.ShoppingCartVO;

/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static int number_of_items = 0;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
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
	      
	      List<ProductDetailsVO> cart_list = new ArrayList<ProductDetailsVO>();
	      List<ProductDetailsVO> product_list = new ArrayList<ProductDetailsVO>();
	      
	      
	      String product_name = (String) request.getParameter("item_name");
	      String product_id = (String) request.getParameter("product_id");
	      String session_id = (String) request.getParameter("session_id");
	      int cart_count = 0; 
	      
	      Integer category_id = (Integer)(session.getAttribute("category_id"));
	      String category_name = session.getAttribute("category_name").toString();
	      int userID = 1;
	      int value = 0;
	      
	      System.out.println("the category id is : "+category_id);
	      System.out.println("the product name to be added to cart is : "+product_name+ " and it's product id is : "+product_id);
	      
	      cart_list = GroceriesDetailsDAO.retrieveGroceryCartDetails(product_name);
	      product_list = GroceriesDetailsDAO.retrieveGroceryDetails(category_id);
	      System.out.println("the session id is : "+session_id);
	      for(ProductDetailsVO prodVo : cart_list){
	 
	        try {
			 value = AddToShoppingCartDAO.addProductToShoppingCart(prodVo.getProductId(), prodVo.getProductName(), prodVo.getProductPrice(), prodVo.getQuantity(), session_id);
			cart_count = AddToShoppingCartDAO.countNumberOfItems(session_id);
					} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
	      }
	      System.out.println("No of entry is : "+value);
	      System.out.println("no of items in the cart : "+cart_count);

	      session.setAttribute("product_details", product_list);
		  session.setAttribute("category_id", category_id);
		  session.setAttribute("category_name",category_name);
		  session.setAttribute("cart_size", cart_count);
		  session.setAttribute("user_id", userID);
		  session.setAttribute("session_id", session_id);
		  System.out.println("cart list size : "+cart_count);
	      rd=request.getRequestDispatcher("DetailsOfGrocery.jsp");    
	      rd.forward(request,response);
	      out.close();	
			
	      }

}