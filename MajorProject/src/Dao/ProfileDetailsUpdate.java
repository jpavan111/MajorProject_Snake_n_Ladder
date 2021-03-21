package Dao;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.User;

public class ProfileDetailsUpdate {
	public static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	public boolean update(User user) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String sql = "UPDATE User SET username=:userName, password=:password WHERE id=:id";

		int check = session.createNativeQuery(sql)
				.setParameter("id", user.getId())
				.setParameter("userName", user.getUsername())
				.setParameter("password", user.getPassword())
				.executeUpdate();

		session.getTransaction().commit();
		session.close();

		if (check == 1)
			return true;
		else
			return false;
	}

}
