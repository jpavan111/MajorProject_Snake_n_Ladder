package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.BlockDao;
import Entity.General_Knowledge;

@WebServlet("/answer-match")
public class AnswerMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int blockId = Integer.parseInt(request.getParameter("id"));
			
			String answer = request.getParameter("option");
			
			BlockDao dao = new BlockDao();
			
			General_Knowledge gk = new General_Knowledge(blockId, null, null, null, null, null, null, answer);
			
			Boolean check = dao.getAnswer(gk);
			
			if(check == true)
				response.sendRedirect("SNL.jsp");
			else
			{
				String s=String.valueOf(blockId);
				request.setAttribute("result", s);
				request.getRequestDispatcher("GetBlockValue").forward(request, response);
			}
		}
		
		catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
