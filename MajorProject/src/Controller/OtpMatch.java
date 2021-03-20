package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.OtpClass;

@WebServlet("/otp-match")
public class OtpMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userOtp = request.getParameter("userOtp");
		OtpClass otpObj = (OtpClass) request.getAttribute("otpObject");
//		OtpClass otpObj = (OtpClass)otpObj1;
//		System.out.println(otpObj.getEmail());
		
		if(userOtp == null)
		{
			request.setAttribute("otpObj", otpObj);
		    request.getRequestDispatcher("ConfirmOTP.jsp").forward(request, response);
		}
		else
		{
			try {
				if(userOtp.equals(String.valueOf(otpObj.getEmail())))
				{
					request.setAttribute("otpObj", otpObj);
					request.getRequestDispatcher("UpdatePassword.jsp").forward(request, response);
				}
				else
				{
					throw new Exception("OTP don't match");
				}
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
				request.setAttribute("otpObj", otpObj);
			    request.getRequestDispatcher("ConfirmOTP.jsp").forward(request, response);
			}
		}
		
	}

}
