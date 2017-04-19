package com.edu.capstone.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
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

import com.edu.capstone.DAO.OrderSummaryDAO;
import com.edu.capstone.DAO.RetrieveCartDetailsDAO;
import com.edu.capstone.DAO.RetrieveOrderDetailsDAO;
import com.edu.capstone.DAO.VerifyCustomerDAO;
import com.edu.capstone.vo.NamesVO;
import com.edu.capstone.vo.OrderSummaryVO;
import com.edu.capstone.vo.ShoppingCartVO;

/**
 * Servlet implementation class VerifyExistingCustomerServlet
 */
@WebServlet("/VerifyExistingCustomerServlet")
public class VerifyExistingCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyExistingCustomerServlet() {
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
		int gen_orderID;
		int reg_user_id;
		OrderSummaryVO summaryVo = new OrderSummaryVO();
		NamesVO user_namevo = new NamesVO();
		List<ShoppingCartVO> ordered_details = new ArrayList<ShoppingCartVO>();

		 String session_id ;
		if(request.getParameter("generated_order_id") != null && request.getParameter("session_id") != null){
			gen_orderID = Integer.parseInt(request.getParameter("generated_order_id"));
			session_id =  request.getParameter("session_id");
		}
		else{
			gen_orderID = (Integer)session.getAttribute("generated_order_id");
			session_id = (String)session.getAttribute("session_id");
		}
		System.out.println("the gen order id is : "+gen_orderID);
		System.out.println("the session id for final confirmation  is : "+session_id);
		
		String email_id = request.getParameter("e_mail_id");
		String passwrd = request.getParameter("customer_login_pwd");
		//System.out.println("The email id and pwd are : "+email_id+" and "+passwrd);
		if(email_id != null && passwrd != null){
			try {
				reg_user_id = VerifyCustomerDAO.verifyRegisteredCustomer(email_id, passwrd);
				if(reg_user_id != 0){
					if(OrderSummaryDAO.updateOrderSummary(reg_user_id, gen_orderID)){
						user_namevo = RetrieveOrderDetailsDAO.retrieveCustomerForOrder(reg_user_id);
						summaryVo = RetrieveOrderDetailsDAO.retrieveCustomerOrderSummary(reg_user_id, session_id);
						ordered_details = RetrieveCartDetailsDAO.retrieveCartDetailsForUser(session_id);
						session.setAttribute("user_name_details", user_namevo);
						session.setAttribute("order_summary", summaryVo);
						session.setAttribute("order_final_details", ordered_details);
						response.sendRedirect("ConfirmationOrder.jsp");	
						System.out.println("the user name : "+user_namevo.getFirstName());
					}
					else{
						request.setAttribute("errorMessage", "Order could not be updated !");
					    RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterCustomer.jsp");
						requestDispatcher.forward(request, response);
						return;
					}
				}
				else{
					request.setAttribute("errorMessage", "Invalid Login Credentials! Please try again later...");
				    RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterCustomer.jsp");
					requestDispatcher.forward(request, response);
					return;
				}
				
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
