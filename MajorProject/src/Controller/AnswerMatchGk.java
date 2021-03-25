package Controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.BlockDao;
import Dao.ReadLeaderBoardDao;
import Entity.Cell;
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
			
			LinkedList<Cell> boardObject = (LinkedList<Cell>)request.getSession().getAttribute("cells");
			
//			int newPositionByDice = (int)request.getSession().getAttribute("diceValue1");
//			player.setPosition(player.getPosition() + newPositionByDice);
			
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
				
				
				if(player.getPosition() == 11 || player.getPosition() == 15 || player.getPosition() == 32 ||
				   player.getPosition() == 19 || player.getPosition() == 25 || player.getPosition() == 51 ||
				   player.getPosition() == 58 || player.getPosition() == 60 || player.getPosition() == 67 ||
				   player.getPosition() == 77)
				{
					//System.out.println(boardObject.get(10).getLadder().getInitialPosition());
					//System.out.println(boardObject.get(10).getLadder().getFinalPosition());
					//System.out.println(boardObject.get(12).toString());
					lb.setGkScore(player.getGkScore()+10);
					player.setPosition(boardObject.get(player.getPosition()-1).getLadder().getFinalPosition());
				}
				
				score.setGK_Score(lb);
				
//				Checking the end of game.
				if(player.getPosition() == 100)
					response.sendRedirect("GameEndGk.jsp");
				else
					{
						request.setAttribute("answerMessage", 1);
						request.getSession().setAttribute("itsme", player);
						request.getRequestDispatcher("Gk_game.jsp").forward(request, response);
//						response.sendRedirect("Gk_game.jsp");
					}
			}
			else {

				if(player.getPosition() == 24 || player.getPosition() == 68 || player.getPosition() == 50 ||
				   player.getPosition() == 59 || player.getPosition() == 76 || player.getPosition() == 91 ||
				   player.getPosition() == 94 || player.getPosition() == 99)
				{
					//System.out.println(boardObject.get(10).getLadder().getInitialPosition());
					//System.out.println(boardObject.get(10).getLadder().getFinalPosition());
					//System.out.println(boardObject.get(12).toString());
					
					player.setPosition(boardObject.get(player.getPosition()-1).getSnake().getFinalPosition());
				}
			
//				Checking the end of game.
				if(player.getPosition() == 100)
					response.sendRedirect("GameEndGk.jsp");
				else
					{
						request.setAttribute("answerMessage", 0);
						request.getSession().setAttribute("itsme", player);
						request.getRequestDispatcher("Gk_game.jsp").forward(request, response);
//						response.sendRedirect("Gk_game.jsp");
					}
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}

}
