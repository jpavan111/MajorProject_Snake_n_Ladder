package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import Dao.ReadLeaderBoardDao;
import Entity.Leaderboard;
import Entity.Player;
import Entity.User;

@WebServlet("/load-game")
public class LoadGame extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Object playerId = request.getSession().getAttribute("playerId");
			Object playerName = request.getSession().getAttribute("playerName");
			Object playerEmail = request.getSession().getAttribute("playerEmail");
			
			
//			Creating + Setting values from user to Player Object
			Player player = new Player();
			player.setPlayerId((Integer)playerId);
			player.setPlayerName((String)playerName);
			player.setEmail((String)playerEmail);
			player.setPosition(1);
			player.setGkScore(0);
			player.setJavaScore(0);
			
			
//			Creating + Inserting player entry into leaderboard
			ReadLeaderBoardDao lb = new ReadLeaderBoardDao();
			Leaderboard objlb= new Leaderboard();
			objlb.setId(player.getPlayerId());
			objlb.setName(player.getPlayerName());
			objlb.setScore(0);
			lb.createGetLeaderboard(objlb);
			
			
			request.getSession().setAttribute("itsme", player);
			response.sendRedirect("game.jsp");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			request.getRequestDispatcher("game.jsp").forward(request, response);
		}
	}

}
