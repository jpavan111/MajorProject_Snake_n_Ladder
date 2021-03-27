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
	private int gameInstanceNo;
	@Column(nullable = false)
	private int playerid;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private int score;
	@Column(nullable = false)
	private String date;
	@Column(nullable = false)
	private String gameType;


	public Leaderboard() {
		super();
	}

	
	public Leaderboard(int playerid, String name, int score, String date, String gameType) {
		super();
		this.playerid = playerid;
		this.name = name;
		this.score = score;
		this.date = date;
		this.gameType = gameType;
	}


	public int getLeaderboardId() {
		return gameInstanceNo;
	}


	public void setLeaderboardId(int gameInstanceNo) {
		this.gameInstanceNo = gameInstanceNo;
	}


	public int getId() {
		return playerid;
	}


	public void setId(int playerid) {
		this.playerid = playerid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getGameType() {
		return gameType;
	}


	public void setGameType(String gameType) {
		this.gameType = gameType;
	}
	
	
}