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

	public boolean checkUser(String email, String username) {
		
		Session session = sessionFactory.openSession();
		
		String sql = "SELECT * FROM user WHERE email=:email or username=:username";
		
		User user = null;
		try {
			user = session.createNativeQuery(sql, User.class)
								.setParameter("email", email)
								.setParameter("username", username)
								.getSingleResult();
			
			if(user.getEmail().equals(email) || user.getUsername().equals(username))
				return false;
			
		} catch (Exception e) {
			System.out.println("Error in User dao");
		}
		
		session.close();
		return true;
	}
	
}