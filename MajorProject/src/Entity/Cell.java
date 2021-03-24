package Entity;

public class Cell {
	
	private int value;
	Snake snake;
	Ladder ladder;

	public Cell() {
		super();
	}

	
	
	public Cell(int value) {
		super();
		this.value = value;
	}



	public Cell(int value, Snake snake, Ladder ladder) {
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
