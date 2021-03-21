package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import Dao.SendingEmail;
import Dao.UserDao;
import Entity.User;

@WebServlet("/register-servlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String newPassword = DigestUtils.md5Hex(password);
			String myHash;

			UserDao dao = new UserDao();
			boolean check = dao.checkUser(email, username);
			
				if (check == true) {
					Random random = new Random();
					random.nextInt(999999);
					myHash = DigestUtils.md5Hex("" + random);

					User user = new User();
					user.setUsername(username);
					user.setEmail(email);
					user.setPassword(newPassword);
					user.setMyhash(myHash);

					SendingEmail sm = new SendingEmail(email, myHash);
					sm.sendEmail();

					userDao.createUser(user);

					RequestDispatcher dispatcher = request.getRequestDispatcher("verify.jsp");
					dispatcher.forward(request, response);
				} else
					throw new Exception("User already exists!");
		}

		catch (Exception e) {
			System.out.println(e.getMessage());
			request.setAttribute("userExistance", 1);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}