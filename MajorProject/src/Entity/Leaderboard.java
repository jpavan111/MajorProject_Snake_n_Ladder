package Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="leaderboard")
public class Leaderboard {
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int leaderboardId;
	@Column(nullable = false)
	private int id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private int javaScore;
	@Column(nullable = false)
	private int gkScore;
	@Column(nullable = false)
	private String date;

	public Leaderboard() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Leaderboard(int id, String name, int javaScore, int gkScore, String date) {
		super();
		this.id = id;
		this.name = name;
		this.javaScore = javaScore;
		this.gkScore = gkScore;
		this.date = date;
	}

	public int getLeaderboardId() {
		return leaderboardId;
	}
	public void setLeaderboardId(int leaderboardId) {
		this.leaderboardId = leaderboardId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJavaScore() {
		return javaScore;
	}
	public void setJavaScore(int javaScore) {
		this.javaScore = javaScore;
	}
	public int getGkScore() {
		return gkScore;
	}
	public void setGkScore(int gkScore) {
		this.gkScore = gkScore;
	}
}