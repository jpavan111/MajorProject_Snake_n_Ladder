package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.LoginDao;
import Entity.User;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			LoginDao dao = new LoginDao();
			User user = new User(null, email, password, null);
			boolean check =  dao.authenticateUser(user);
			
			if(check == true) {
//				HttpSession session=request.getSession();
//				session.setAttribute("my-auth", 1);
				
				response.sendRedirect("index.jsp");
			} else {
				throw new Exception("Authentication Failed");
			}
			
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			response.sendRedirect("login.jsp");
		}
	}

}
