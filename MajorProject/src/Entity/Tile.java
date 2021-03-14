package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Tile")
public class Tile {
	
	@Id
	@Column(name="Value")
	private int value;
	
	@Column(name="Snake")
	Snake snake;
	
	@Column(name="Ladder")
	Ladder ladder;

	public Tile() {
		super();
	}

	public Tile(int value, Snake snake, Ladder ladder) {
		super();
		this.value = value;
		this.snake = snake;
		this.ladder = ladder;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public Snake getSnake() {
		return snake;
	}

	public void setSnake(Snake snake) {
		this.snake = snake;
	}

	public Ladder getLadder() {
		return ladder;
	}

	public void setLadder(Ladder ladder) {
		this.ladder = ladder;
	}


	
	
	
}
