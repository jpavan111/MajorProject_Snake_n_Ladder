package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.BlockDao;
import Entity.General_Knowledge;
import Entity.Player;
import Entity.VisitedBlock;

@WebServlet("/GetBlockValue")
public class GetBlockValue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Player newPlayer = new Player();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		
		try {
			Object blockId = (String)request.getParameter("block");
			int blockId1=0;
			
			
			if(Integer.parseInt(new String((String) blockId)) >= 1)
			{
				newPlayer.setPosition(Integer.parseInt(new String((String) blockId)));
			}
			else if(request.getParameter("currentpos") != null){
				newPlayer.setPosition(Integer.parseInt(request.getParameter("currentpos")));
			}
			
			
			
			
			
//			For wrong Answer
			
			if(blockId == null)
			{
				blockId =  request.getAttribute("result");
				
//			Converting Object to int
				blockId1 = Integer.parseInt(new String((String) blockId));
			}
			
			
//			For 1st reply or Correct Answer
			else {
//			Converting Object to int
				blockId1 = Integer.parseInt(new String((String) blockId));
			
//			Randomizing Input Id
				if(Integer.parseInt(new String((String) blockId)) < 21)
				{
					Random random = new Random();
					blockId1 = random.nextInt(20 - 1) + 1;
				}
				else if(Integer.parseInt(new String((String) blockId)) > 20 && Integer.parseInt(new String((String) blockId)) < 51)
				{
					Random random = new Random();
					blockId1 = random.nextInt(50 - 21) + 21;
				}
				else
				{
					Random random = new Random();
					blockId1 = random.nextInt(100 - 51) + 51;
				}
			}

			
			VisitedBlock visit = new VisitedBlock(blockId1, false);
			
			if(visit.getVisit() != true)
			{	
				visit.setVisit(true);
			
				BlockDao dao = new BlockDao();
				
				General_Knowledge gk = new General_Knowledge(blockId1, null, null, null, null, null, null, null);
				
				General_Knowledge que = dao.getQuestion(gk);
				
				
				que.setAnswer(null);
				request.setAttribute("valp", newPlayer);
				request.setAttribute("que", que);
				request.getRequestDispatcher("Question.jsp").forward(request, response);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Question fetching failed");
			request.getRequestDispatcher("SNL.jsp").forward(request, response);
		}		
	}

}
