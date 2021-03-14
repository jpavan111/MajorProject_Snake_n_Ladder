package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.BlockDao;
import Entity.General_Knowledge;
import Entity.Player;

@WebServlet("/answer-match")
public class AnswerMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		try {
			int blockId = Integer.parseInt(request.getParameter("id"));
			
			int valp=Integer.parseInt(request.getParameter("pos"));
			Player currentPos=new Player();
			currentPos.setPosition(valp);
			String answer = request.getParameter("option");
			
			BlockDao dao = new BlockDao();
			
			General_Knowledge gk = new General_Knowledge(blockId, null, null, null, null, null, null, answer);
			
			Boolean check = dao.getAnswer(gk);
			
			if(check == true)
			{	
				request.setAttribute("currentpos", currentPos.getPosition());
				
				request.getRequestDispatcher("game.jsp").forward(request, response);
			}
			else
			{
//				String s = String.valueOf(blockId);
//				request.setAttribute("currentpos", currentPos.getPosition());
				
				request.setAttribute("currentpos", currentPos.getPosition());
				request.getRequestDispatcher("game.jsp").forward(request, response);
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}

}
