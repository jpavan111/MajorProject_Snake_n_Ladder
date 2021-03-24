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
import Dao.JavaBlockDao;
import Dao.ReadLeaderBoardDao;
import Entity.Cell;
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
			
			LinkedList<Cell> boardObject = (LinkedList<Cell>)request.getSession().getAttribute("cells");
			
//			int newPositionByDice = (int)request.getSession().getAttribute("diceValue1");
//			player.setPosition(player.getPosition()+newPositionByDice);
			
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
				
				if(player.getPosition() == 11 || player.getPosition() == 15 || player.getPosition() == 32 ||
				   player.getPosition() == 19 || player.getPosition() == 25 || player.getPosition() == 51 ||
				   player.getPosition() == 58 || player.getPosition() == 60 || player.getPosition() == 67 ||
				   player.getPosition() == 77)
				{
					//System.out.println(boardObject.get(10).getLadder().getInitialPosition());
					//System.out.println(boardObject.get(10).getLadder().getFinalPosition());
					//System.out.println(boardObject.get(12).toString());
					lb.setJavaScore(player.getJavaScore()+10);
					player.setPosition(boardObject.get(player.getPosition()-1).getLadder().getFinalPosition());
				}
				
				score.setJava_Score(lb);
				
//				Checking the end of game.
				if(player.getPosition() == 100)
					response.sendRedirect("GameEndJava.jsp");
				else
					{
						request.setAttribute("answerMessage", 1);
						request.getSession().setAttribute("itsme", player);
						request.getRequestDispatcher("Java_game.jsp").forward(request, response);
//						response.sendRedirect("Java_game.jsp");
					}
					
					
			}
			else
			{
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
					response.sendRedirect("GameEndJava.jsp");
				else
					{
						request.setAttribute("answerMessage", 0);
						request.getSession().setAttribute("itsme", player);
						request.getRequestDispatcher("Java_game.jsp").forward(request, response);
//						response.sendRedirect("Java_game.jsp");
					}
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
			response.sendRedirect("logout");
		}
	}

}
