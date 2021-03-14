package Dao;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UpdateStatus {
public static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
private static String userEmail;
private static String myHash;
	public UpdateStatus(String userEmail, String myHash) {
		super();
		this.userEmail = userEmail;
		this.myHash = myHash;
}

	public UpdateStatus() {
		
	}

	public int update() {
	Session session =  sessionFactory.openSession();
	session.beginTransaction();
	Query query=session.createQuery("UPDATE User SET active=:active WHERE email=:email AND myhash=:myhash"); 
	
	
			query.setParameter("active", 1);
			query.setParameter("email",userEmail );
			query.setParameter("myhash",myHash );
		int status=query.executeUpdate();
		System.out.println(status);  
	session.getTransaction().commit();
	session.close();
	return status;
}
	
}
