package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.BlockDao;
import Entity.General_Knowledge;

@WebServlet("/GetBlockValue")
public class GetBlockValue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Object blockId = (String)request.getParameter("block");
			
			if(blockId == null)
			{
				blockId =  request.getAttribute("result");
			}
			
			String blockemt=new String((String) blockId);
			int blockId1 = Integer.parseInt(blockemt);
			
			BlockDao dao = new BlockDao();
			
			
			
			
			
			General_Knowledge gk = new General_Knowledge(blockId1, null, null, null, null, null, null, null);
			
			General_Knowledge que = dao.getQuestion(gk);
			
			que.setAnswer(null);
			
			request.setAttribute("que", que);
			request.getRequestDispatcher("Question.jsp").forward(request, response);
		}
		catch (NumberFormatException e) {
			e.printStackTrace();
			System.out.println("Question fetching failed");
			request.getRequestDispatcher("SNL.jsp").forward(request, response);
		}		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
