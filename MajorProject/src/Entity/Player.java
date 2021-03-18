package Entity;

public class Player {

	private int playerId;
	private int position;
	private String playerName;
	private String email;
	private int gkScore;
	private int javaScore;

	public Player() {
		super();
	}

	public Player(int playerId, int position, String playerName, String email, int gkScore, int javaScore) {
		super();
		this.playerId = playerId;
		this.position = position;
		this.playerName = playerName;
		this.email = email;
		this.gkScore = gkScore;
		this.javaScore = javaScore;
	}


	public int getPlayerId() {
		return playerId;
	}


	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}


	public String getPlayerName() {
		return playerName;
	}


	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getGkScore() {
		return gkScore;
	}


	public void setGkScore(int gkScore) {
		this.gkScore = gkScore;
	}


	public int getJavaScore() {
		return javaScore;
	}


	public void setJavaScore(int javaScore) {
		this.javaScore = javaScore;
	}


	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}

}