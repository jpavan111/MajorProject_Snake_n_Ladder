package Controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import Dao.BoardDao;
import Dao.ReadLeaderBoardDao;
import Entity.Cell;
import Entity.Leaderboard;
import Entity.Player;
import Entity.User;

@WebServlet("/load-game-java")
public class LoadGameJava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
//			ArrayList<Integer> visitedQuestion = new ArrayList<Integer> (150);
//			visitedQuestion.add(0);
			
			Object playerId = request.getSession().getAttribute("playerId");
			Object playerName = request.getSession().getAttribute("playerName");
			Object playerEmail = request.getSession().getAttribute("playerEmail");
			
			
			BoardDao bdao = new BoardDao();
			Cell cellArray[] = bdao.cellCreation();
			
			LinkedList<Cell> ab = new LinkedList<Cell>();
			
			for (int i = 0; i < cellArray.length; i++) {
				ab.add(cellArray[i]);
			 }
				ab.remove(0);
			
//			Creating + Setting values from user to Player Object
			Player player = new Player();
			player.setPlayerId((Integer)playerId);
			player.setPlayerName((String)playerName);
			player.setEmail((String)playerEmail);
			player.setPosition(1);
			player.setGkScore(0);
			player.setJavaScore(0);

//			Generating & saving current date-time
			LocalDateTime myDateObj = LocalDateTime.now();
		    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		    String formattedDate = myDateObj.format(myFormatObj);
		    System.out.println("Saving formatted date-time: " + formattedDate);
		    
			player.setInstance(formattedDate);
			
//			Creating + Inserting player entry into leader board
			ReadLeaderBoardDao lb = new ReadLeaderBoardDao();
			Leaderboard objlb= new Leaderboard();
			objlb.setId(player.getPlayerId());
			objlb.setName(player.getPlayerName());
			objlb.setGkScore(0);
			objlb.setJavaScore(0);
			objlb.setDate(formattedDate);
			
			lb.createGetLeaderboardJava(objlb);
			
			
			request.getSession().setAttribute("itsme", player);
			request.getSession().setAttribute("cells", ab);
			response.sendRedirect("Java_game.jsp");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			request.getRequestDispatcher("Java_game.jsp").forward(request, response);
		}
	}

}
