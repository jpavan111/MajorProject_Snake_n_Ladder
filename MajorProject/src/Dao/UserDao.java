package Dao;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Entity.User;



public class UserDao {
private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public  void createUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(user);
		
		session.getTransaction().commit();
		session.close();
	}

	public void confirmPassword(String email, String userNewPassword) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String sql = "UPDATE user SET password=:password WHERE email=:email";
		
		session.createNativeQuery(sql)
				.setParameter("password", DigestUtils.md5Hex(userNewPassword))
				.setParameter("email", email)
				.executeUpdate();
		
		session.getTransaction().commit();
		session.close();
		
	}
	
}