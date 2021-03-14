package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/otp-match")
public class OtpMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userOtp = request.getParameter("userOtp");
		String emailOtp = request.getParameter("emailOtp");
		String email = request.getParameter("email");
		
		if(userOtp == null)
		{
			request.setAttribute("randomOtp", emailOtp);
		    request.setAttribute("emailOtp", email);
		    request.getRequestDispatcher("ConfirmOTP.jsp").forward(request, response);
		}
		else
		{
			try {
				if(userOtp.equals(emailOtp))
				{
				    request.setAttribute("emailOtp", email);
					request.getRequestDispatcher("UpdatePassword.jsp").forward(request, response);
				}
				else
				{
					throw new Exception("OTP don't match");
				}
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
				request.setAttribute("randomOtp", emailOtp);
			    request.setAttribute("emailOtp", email);
			    request.getRequestDispatcher("ConfirmOTP.jsp").forward(request, response);
			}
		}
		
	}

}
