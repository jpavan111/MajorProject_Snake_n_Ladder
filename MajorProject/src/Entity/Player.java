package Entity;

import java.time.LocalDateTime;

public class Player {

	private int playerId;
	private int position;
	private String playerName;
	private String email;
	private int score;
	private String gameType;
	private String instance;

	public Player() {
		super();
	}

	public Player(int playerId, int position, String playerName, String email, int score, String gameType,
			String instance) {
		super();
		this.playerId = playerId;
		this.position = position;
		this.playerName = playerName;
		this.email = email;
		this.score = score;
		this.gameType = gameType;
		this.instance = instance;
	}

	public int getPlayerId() {
		return playerId;
	}

	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
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

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getGameType() {
		return gameType;
	}

	public void setGameType(String gameType) {
		this.gameType = gameType;
	}

	public String getInstance() {
		return instance;
	}

	public void setInstance(String instance) {
		this.instance = instance;
	}

	
}