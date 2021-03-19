package Dao;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.Leaderboard;

public class ReadLeaderBoardDao {
	private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	
	public ReadLeaderBoardDao() {
		super();
	}


	public List<Leaderboard> readLeaderBoard() {
		Session session=sessionFactory.openSession();
		
		String sql = "SELECT * FROM leaderboard order by score desc";
		List<Leaderboard> list = session.createNativeQuery(sql, Leaderboard.class).list();
		
		//list.stream().map(p -> p.getTopic()).forEach(System.out::println);
		
		session.close();
		return list;
	}


	public void setGK_Score(Leaderboard lb) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String sql = "UPDATE leaderboard SET score=:score where id=:id";
		
		session.createNativeQuery(sql)
				.setParameter("score", lb.getScore())
				.setParameter("id", lb.getId())
				.executeUpdate();
		
		session.getTransaction().commit();
		session.close();
		
	}


	public void createGetLeaderboard(Leaderboard objlb) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		try {
			String sql1 = "SELECT * FROM leaderboard where id=:id";
			
			Leaderboard objectSearch = session.createNativeQuery(sql1, Leaderboard.class)
												.setParameter("id", objlb.getId())
												.getSingleResult();
			
			
			String sql3 = "UPDATE leaderboard SET score=0 where id=:id";
			
			session.createNativeQuery(sql3)
					.setParameter("id", objlb.getId())
					.executeUpdate();
			
		} catch (Exception e) {
			session.save(objlb);
		}
		session.getTransaction().commit();
		session.close();
	}
}