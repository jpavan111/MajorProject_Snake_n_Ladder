package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ReadLeaderBoardDao;
import Entity.Leaderboard;



@WebServlet("/read-leaderboard")
public class ReadLeaderBoardAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReadLeaderBoardDao rv = new ReadLeaderBoardDao();		
		List<Leaderboard> list = rv.readLeaderBoard();
		
		request.setAttribute("playerList",list);
		
		request.getRequestDispatcher("leaderBoard.jsp?p=1").forward(request, response);
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
