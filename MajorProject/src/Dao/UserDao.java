package Dao;

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

	
}