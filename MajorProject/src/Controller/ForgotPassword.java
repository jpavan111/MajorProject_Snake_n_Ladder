package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ForgotMailService;

@WebServlet("/forgot-password")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		Random r = new Random();
	    String randomOtp = String.format("%04d", (Object) Integer.valueOf(r.nextInt(1001)));

	    System.out.println("Random Integers: "+randomOtp);

	    
	    
	    
	    ForgotMailService forgot = new ForgotMailService(email, randomOtp);
	    String otp = forgot.sendForgotEmail();
	    
	    request.setAttribute("randomOtp", otp);
	    request.setAttribute("emailOtp", email);
	    request.getRequestDispatcher("ConfirmOTP.jsp").forward(request, response);
	}

}
