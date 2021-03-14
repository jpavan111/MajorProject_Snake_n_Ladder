package Dao;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.User;

public class LoginDao {

	public static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	public boolean authenticateUser(User user) {
		Session session = sessionFactory.openSession();

		try {
			LoginDao ldao = new LoginDao();
			boolean active = ldao.checkUserStatus(user);

			if (active == true) {
				String sql = "SELECT * FROM user WHERE email=:email AND password=:password";

				User dbuser = session.createNativeQuery(sql, User.class)
									.setParameter("email", user.getEmail())
									.setParameter("password", DigestUtils.md5Hex(user.getPassword()))
									.getSingleResult();

				session.close();

				if (dbuser != null) {
					return true;
				} else {
					return false;
				}
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	private boolean checkUserStatus(User user) {

		Session session = sessionFactory.openSession();

		String sql = "SELECT * FROM user WHERE email=:email";

		User userStatus = session.createNativeQuery(sql, User.class)
								.setParameter("email", user.getEmail())
								.getResultList().get(0);

		session.close();

		if (userStatus.getActive() == 1) {
			return true;
		} else {
			return false;
		}
	}

}
