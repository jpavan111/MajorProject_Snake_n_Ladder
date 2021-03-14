package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UpdateStatus;
import Dao.UserDao;
import Entity.User;


@WebServlet("/activate-account")
public class ActivateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	private User user;

    public void init() {
        userDao = new UserDao();
    }
       
  
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException {
    	String email=request.getParameter("key1");
		String hash=request.getParameter("key2");
    	

    	try {
    		
   
    		UpdateStatus active=new UpdateStatus(email,hash);
    		
    		
    		int verify=active.update();
    		if(verify==1) {
    			 response.sendRedirect("login.jsp");
    		}
   
  else {
	   response.sendRedirect("login.jsp"); 
  }
    	}
    	  catch(Exception e) {
    		  e.printStackTrace();
    		  
    		  response.sendRedirect("login.jsp");  
    	  }
    	
    	    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
