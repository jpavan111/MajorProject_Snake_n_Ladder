package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.LoginDao;
import Dao.PlayerDao;
import Entity.User;

@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
//			Getting User Entered Parameters
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
//			Checking the answer
			LoginDao dao = new LoginDao();
			User user = new User(null, email, password, null);
			boolean check =  dao.authenticateUser(user);
			
//			Extracting player details
			PlayerDao pdao = new PlayerDao();
			User p = pdao.getPlayerDetails(user);
			
			p.setPassword(null);
			p.setMyhash(null);
			p.setActive(1);
			
			if(check == true) {
				
//				Setting player object into Session
				HttpSession session=request.getSession();
				session.setAttribute("newSession", 1);
				session.setAttribute("playerObject", p);
				session.setAttribute("playerId", p.getId());
				session.setAttribute("playerName", p.getUsername());
				session.setAttribute("playerEmail", p.getEmail());
				
				response.sendRedirect("index.jsp");
			}
			else {
				throw new Exception("Authentication Failed");
			}
			
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			response.sendRedirect("login.jsp");
		}
	}

}
