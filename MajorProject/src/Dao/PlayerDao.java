package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.User;

public class PlayerDao {

	public static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	public User getPlayerDetails(User player) {
		Session session = sessionFactory.openSession();
		String sql = "SELECT * FROM user WHERE email=:email";

		User p = session.createNativeQuery(sql, User.class)
							.setParameter("email", player.getEmail())
							.getSingleResult();
		session.close();
		return p;
	}

}
