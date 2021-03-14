package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;

@WebServlet("/update-password")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userNewPassword = request.getParameter("userNewPassword");
		String confirmPassword = request.getParameter("confirmPassword");
		String email = request.getParameter("email");
		
		if(userNewPassword == null || confirmPassword == null || !userNewPassword.equals(confirmPassword))
		{
		    request.setAttribute("emailOtp", email);
		    request.getRequestDispatcher("UpdatePassword.jsp").forward(request, response);
		}
		else
		{
			UserDao dao = new UserDao();
			dao.confirmPassword(email, userNewPassword);
			response.sendRedirect("login.jsp");
		}
		
	}

}
