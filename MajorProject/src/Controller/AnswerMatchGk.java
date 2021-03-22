package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.BlockDao;
import Dao.ReadLeaderBoardDao;
import Entity.General_Knowledge;
import Entity.Leaderboard;
import Entity.Player;

@WebServlet("/answer-match-gk")
public class AnswerMatchGk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String answer = request.getParameter("id");
			
			Player player = (Player)request.getSession().getAttribute("itsme");
			
			General_Knowledge que = (General_Knowledge) request.getSession().getAttribute("que");
			
			BlockDao dao = new BlockDao();
			
			General_Knowledge gk = new General_Knowledge(que.getId(), null, null, null, null, null, null, answer);
			
			Boolean check = dao.getAnswer(gk);
			
			if(check == true)
			{	
				player.setGkScore(player.getGkScore()+1);
				
//				Updating score into leader board
				Leaderboard lb = new Leaderboard();
				lb.setId(player.getPlayerId());
				lb.setName(player.getPlayerName());
				lb.setGkScore(player.getGkScore());
				lb.setJavaScore(0);
				lb.setDate(player.getInstance());
				
				ReadLeaderBoardDao score = new ReadLeaderBoardDao();
				score.setGK_Score(lb);
				
				request.getSession().setAttribute("itsme", player);
				response.sendRedirect("Gk_game.jsp");
			}
			else
			{
				request.getSession().setAttribute("itsme", player);
				response.sendRedirect("Gk_game.jsp");
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}

}
