package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.BlockDao;
import Dao.JavaBlockDao;
import Dao.ReadLeaderBoardDao;
import Entity.General_Knowledge;
import Entity.JavaMcq;
import Entity.Leaderboard;
import Entity.Player;

@WebServlet("/answer-match-java")
public class AnswerMatchJava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String answer = request.getParameter("id");
			
			Player player = (Player)request.getSession().getAttribute("itsme");
			
			JavaMcq que = (JavaMcq) request.getSession().getAttribute("que");
			
			JavaBlockDao dao = new JavaBlockDao();
			
			JavaMcq java = new JavaMcq(que.getId(), null, null, null, null, null, null, answer);
			
			Boolean check = dao.getAnswer(java);
			
			if(check == true)
			{	
				player.setJavaScore(player.getJavaScore()+1);
				
//				Updating score into leaderboard
				Leaderboard lb = new Leaderboard();
				lb.setId(player.getPlayerId());
				lb.setName(player.getPlayerName());
				lb.setGkScore(0);
				lb.setJavaScore(player.getJavaScore());
				lb.setDate(player.getInstance());
				
				ReadLeaderBoardDao score = new ReadLeaderBoardDao();
				score.setJava_Score(lb);
				
				request.getSession().setAttribute("itsme", player);
				response.sendRedirect("Java_game.jsp");
			}
			else
			{
				request.getSession().setAttribute("itsme", player);
				response.sendRedirect("Java_game.jsp");
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
			response.sendRedirect("logout");
		}
	}

}
