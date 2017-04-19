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
import com.edu.capstone.DAO.RegisterCustomerDAO;
import com.edu.capstone.DAO.RetrieveCartDetailsDAO;
import com.edu.capstone.DAO.RetrieveOrderDetailsDAO;
import com.edu.capstone.validators.EMailIdValidator;
import com.edu.capstone.validators.PasswordValidator;
import com.edu.capstone.vo.GroceryCustomerVO;
import com.edu.capstone.vo.NamesVO;
import com.edu.capstone.vo.OrderSummaryVO;
import com.edu.capstone.vo.ShoppingCartVO;

/**
 * Servlet implementation class RegisterGroceryCustomerServlet
 */
@WebServlet("/RegisterGroceryCustomerServlet")
public class RegisterGroceryCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterGroceryCustomerServlet() {
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
		String session_id = (String) request.getParameter("session_id");
		NamesVO user_names = new NamesVO();
		OrderSummaryVO summaryVo = new OrderSummaryVO();
		List<ShoppingCartVO> ordered_details = new ArrayList<ShoppingCartVO>();

		
		if(request.getParameter("generated_order_id") != null){
			gen_orderID = Integer.parseInt(request.getParameter("generated_order_id"));
		}
		else{
			gen_orderID = (Integer)session.getAttribute("generated_order_id");
		}
		System.out.println("the gen order id is : "+gen_orderID);
		int gen_user_id ; 
		GroceryCustomerVO customerVO = new GroceryCustomerVO();
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String phone_no = request.getParameter("phone_number");
		String address_line = request.getParameter("address_line1");
		String city = request.getParameter("city");
		String zip_code = request.getParameter("zip");
		
		String state = "CA";
		String email_id = request.getParameter("email_id");
		String passwrd_1 = request.getParameter("customer_pwd");
		String passwrd_2 = request.getParameter("confirm_pwd");
		if(EMailIdValidator.validateUserEmailId(email_id)){
			if(PasswordValidator.validateUserPasswords(passwrd_1, passwrd_2, email_id)){
				System.out.println("First name : "+first_name);
				System.out.println("Last name : "+last_name);
				System.out.println("Phone no : "+phone_no);
				System.out.println("Address : "+address_line);
				System.out.println("City : "+city);
				System.out.println("Zip : "+zip_code);
				System.out.println("Email : "+email_id);
				try {
					gen_user_id = RegisterCustomerDAO.registerCustomer(first_name, last_name, phone_no, email_id, passwrd_1, address_line, city, zip_code, state);
					if(gen_user_id != 0){
						if(OrderSummaryDAO.updateOrderSummary(gen_user_id, gen_orderID)){
							user_names = RetrieveOrderDetailsDAO.retrieveCustomerForOrder(gen_user_id);
							summaryVo = RetrieveOrderDetailsDAO.retrieveCustomerOrderSummary(gen_user_id, session_id);
							ordered_details = RetrieveCartDetailsDAO.retrieveCartDetailsForUser(session_id);
							session.setAttribute("user_name_details", user_names);
							session.setAttribute("order_summary", summaryVo);
							session.setAttribute("order_final_details", ordered_details);
							System.out.println("the user name details are : "+user_names);
							request.setAttribute("successMessage", "User successfully registered! Login to continue...");
							response.sendRedirect("RegisterCustomer.jsp");	
						}
						else{
							request.setAttribute("errorMessage_register", "Order could not be updated !");
						    RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterCustomer.jsp");
							requestDispatcher.forward(request, response);
							return;
						}
					}
					else{
						request.setAttribute("errorMessage_register", "Customer could not be registered! Please try again later...");
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
			else{
				request.setAttribute("errorMessage", "Passwords do not match!");
			    RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterCustomer.jsp");
				requestDispatcher.forward(request, response);
				return;
			}
		}
		else{
			request.setAttribute("errorMessage", "Invalid EMail ID");
		    RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterCustomer.jsp");
			requestDispatcher.forward(request, response);
			return;
		}
		
		out.close();
	}

}
