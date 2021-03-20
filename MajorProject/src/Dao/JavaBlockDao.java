package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.General_Knowledge;
import Entity.JavaMcq;

public class JavaBlockDao {

	private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public JavaMcq getQuestion(JavaMcq java) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			String sql = "SELECT * FROM Java WHERE id=:id";

			List<JavaMcq> list =  session.createNativeQuery(sql, JavaMcq.class)
										.setParameter("id", java.getId())
										.list();
			JavaMcq que = list.get(0);
			
			
			session.close();
			return que;
		}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	public Boolean getAnswer(JavaMcq java) {
	
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String sql = "SELECT * FROM Java WHERE id=:id";
		JavaMcq correctAnswer =  session.createNativeQuery(sql, JavaMcq.class)
												.setParameter("id", java.getId())
												.getSingleResult();
		session.close();
		
		if(java.getAnswer().equals(correctAnswer.getAnswer()))
			return true;
		else
			return false;
	}
	 
	
}
