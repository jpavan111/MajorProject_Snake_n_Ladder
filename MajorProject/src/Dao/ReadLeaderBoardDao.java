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
		Session session = sessionFactory.openSession();

		String sql = "SELECT * FROM leaderboard WHERE gameType=:gameType ORDER BY score DESC";
		List<Leaderboard> list = session.createNativeQuery(sql, Leaderboard.class)
										.setParameter("gameType", "gk")
										.list();

		session.close();
		return list;
	}

	
	
	public void setGK_Score(Leaderboard lb) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String sql = "UPDATE leaderboard SET score=:score where date=:date AND name=:name AND gameType=:gameType";

		session.createNativeQuery(sql)
				.setParameter("score", lb.getScore())
				.setParameter("gameType", lb.getGameType())
				.setParameter("date", lb.getDate())
				.setParameter("name", lb.getName())
				.executeUpdate();

		session.getTransaction().commit();
		session.close();
	}

	
	
	public void createGetLeaderboardGk(Leaderboard objlb) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		try {
			session.save(objlb);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		session.getTransaction().commit();
		session.close();
	}

	
	
	
	
////////////////////////////// Java //////////////////////////////////

	
	
	public void setJava_Score(Leaderboard lb) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String sql = "UPDATE leaderboard SET score=:score WHERE date=:date AND name=:name AND gameType=:gameType";

		session.createNativeQuery(sql)
				.setParameter("score", lb.getScore())
				.setParameter("gameType", lb.getGameType())
				.setParameter("date", lb.getDate())
				.setParameter("name", lb.getName())
				.executeUpdate();

		session.getTransaction().commit();
		session.close();
	}

	
	
	
	public void createGetLeaderboardJava(Leaderboard objlb) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		try {
			session.save(objlb);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		session.getTransaction().commit();
		session.close();
	}



	public List<Leaderboard> readLeaderBoardJava() {
		Session session = sessionFactory.openSession();

		String sql = "SELECT * FROM leaderboard WHERE gameType=:gameType ORDER BY score DESC";
		List<Leaderboard> list = session.createNativeQuery(sql, Leaderboard.class)
										.setParameter("gameType","java")
										.list();

		session.close();
		return list;
	}

	
}