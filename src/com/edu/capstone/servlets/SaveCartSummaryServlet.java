package com.edu.capstone.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.edu.capstone.DAO.OrderSummaryDAO;

/**
 * Servlet implementation class SaveCartSummaryServlet
 */
@WebServlet("/SaveCartSummaryServlet")
public class SaveCartSummaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCartSummaryServlet() {
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
	      int order_id = 0;
	      
	      int user_id = (Integer)(session.getAttribute("user_id"));
	      //System.out.println("integer user id passed is : "+user_id);
	      String session_id = request.getParameter("session_id");
	      String order_total_price = session.getAttribute("total_price").toString();
	      int total_items = (Integer) (session.getAttribute("number_of_items"));
	      System.out.println("Total price : "+order_total_price+ " , no. of items : "+total_items);
	  
	      try {
	    	  order_id = OrderSummaryDAO.addDetailsToOrderSummary(total_items, order_total_price, session_id);
			if(order_id != 0){
				session.setAttribute("order_id", order_id);
				response.sendRedirect("RegisterCustomer.jsp");	
			  }
			else{
				rd=request.getRequestDispatcher("CartDetails.jsp");    
			      rd.forward(request,response);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
	      out.close();	
	      
	}

}
