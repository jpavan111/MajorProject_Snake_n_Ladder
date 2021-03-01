package Dao;

import java.util.List;

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
}