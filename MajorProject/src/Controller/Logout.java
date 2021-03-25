package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		Cookie ckEmail = new Cookie("email", null);
		Cookie ckPassword = new Cookie("password", null);
		Cookie ckRemember = new Cookie("remember", null);
		ckEmail.setMaxAge(0);
		ckPassword.setMaxAge(0);
		ckRemember.setMaxAge(0);
		response.addCookie(ckEmail);
		response.addCookie(ckPassword);
		response.addCookie(ckRemember);

		
		HttpSession session = request.getSession();
		session.removeAttribute("que");
		session.removeAttribute("itsme");
		session.removeAttribute("newSession");
		session.removeAttribute("playerObject");
		session.invalidate();						// used for to remove all the data
		response.sendRedirect("login.jsp");			// after logout it will redirect to u login page
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
