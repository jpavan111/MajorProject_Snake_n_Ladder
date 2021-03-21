package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import Dao.ProfileDetailsUpdate;
import Dao.UserDao;
import Entity.User;

@WebServlet("/update-user-by-profile")
public class UpdateUserByProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		update(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		User user = (User) request.getSession().getAttribute("userProfileObj");

		String username = request.getParameter("username");
		String email = null;
		String password = request.getParameter("password");
		String newPassword = DigestUtils.md5Hex(password);
		String confirmPassword = request.getParameter("confirm");

		if (password == null || confirmPassword == null || !password.equals(confirmPassword)) {
			request.getRequestDispatcher("UpdateUserProfile.jsp").forward(request, response);
		}
		else {
			
				ProfileDetailsUpdate updateProfile = new ProfileDetailsUpdate();
				User userUpdate = new User();
				userUpdate.setId(user.getId());
				userUpdate.setUsername(username);
				userUpdate.setPassword(newPassword);

				boolean check = updateProfile.update(userUpdate);
				if (check == true) {
					request.setAttribute("profileUpdationStatus", 1);
					request.getSession().removeAttribute("userProfileObj");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
		
	}

}