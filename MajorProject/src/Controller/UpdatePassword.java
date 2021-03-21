package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UserDao;
import Entity.OtpClass;

@WebServlet("/update-password")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userNewPassword = request.getParameter("password");
		String confirmPassword = request.getParameter("confirm");
		OtpClass otpObj = (OtpClass) request.getSession().getAttribute("otpObj");
		String email = otpObj.getEmail();
		
		if(userNewPassword == null || confirmPassword == null || !userNewPassword.equals(confirmPassword))
		{
		    request.getRequestDispatcher("UpdatePassword.jsp").forward(request, response);
		}
		else
		{
			UserDao dao = new UserDao();
			dao.confirmPassword(email, userNewPassword);
			
			HttpSession otpSession = request.getSession();
			otpSession.removeAttribute("otpObj");
			otpSession.invalidate();
			
			request.setAttribute("updatedPassword", 1);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}
