package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDao;
import Entity.Player;
import Entity.User;

@WebServlet("/load-profile")
public class LoadProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Object playerId = request.getSession().getAttribute("playerId");
		Object playerName = request.getSession().getAttribute("playerName");
		Object playerEmail = request.getSession().getAttribute("playerEmail");
		
		try {
			User player = new User();
			player.setId((int)playerId);
			player.setUsername((String)playerName);
			player.setEmail((String)playerEmail);
			
			request.getSession().setAttribute("userProfileObj", player);
			request.getRequestDispatcher("UpdateUserProfile.jsp").forward(request, response);
			
		} catch (Exception e) {
			System.out.println("Edit Servlet");
			response.sendRedirect("logout");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
