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
	@Column(nullable = false)
	private int id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private int javaScore;
	@Column(nullable = false)
	private int gkScore;

	public Leaderboard() {
		super();
	}
	
	public Leaderboard(int id, String name, int javaScore, int gkScore) {
		super();
		this.id = id;
		this.name = name;
		this.javaScore = javaScore;
		this.gkScore = gkScore;
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