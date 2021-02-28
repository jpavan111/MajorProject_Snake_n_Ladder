package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.General_Knowledge;

public class BlockDao {

	private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public General_Knowledge getQuestion(General_Knowledge gk) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			String sql = "SELECT * FROM General_Knowledge WHERE id=:id";
			List<General_Knowledge> list =  session.createNativeQuery(sql, General_Knowledge.class)
										.setParameter("id", gk.getId())
										.list();
			General_Knowledge que = list.get(0);
			
			session.close();
			return que;
		}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	public Boolean getAnswer(General_Knowledge gk) {
	
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String sql = "SELECT * FROM General_Knowledge WHERE id=:id";
		General_Knowledge correctAnswer =  session.createNativeQuery(sql, General_Knowledge.class)
												.setParameter("id", gk.getId())
												.getSingleResult();
		session.close();
		
		if(gk.getAnswer().equals(correctAnswer.getAnswer()))
			return true;
		else
			return false;
	}
	 
	
}
