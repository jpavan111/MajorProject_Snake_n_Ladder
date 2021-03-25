package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class RollDiceAction
 */
@WebServlet("/RollDiceActionJava")
public class RollDiceActionJava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 public int rollDice()
	    {
	    	int rollValue;
	        rollValue = (int) (Math.random()*6) + 1;  //since math.random returns double type value between 0.0 
	                                                  //and 1.0 so we multiplied and added.
	        return rollValue;
	    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int countMyNumber=0;
		
        RollDiceActionJava d=new RollDiceActionJava();
		
		int value=d.rollDice();
		
		request.setAttribute("diceValue",value);
		
		request.getSession().setAttribute("diceValue",value);

		countMyNumber++;
		request.setAttribute("countmyNumber", countMyNumber);
		
		request.getRequestDispatcher("Java_game.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}