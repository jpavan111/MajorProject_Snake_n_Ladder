package Entity;

public class Snake {
	
	int initialPosition;
	int finalPosition;

	public Snake() {
		super();
	}

	public Snake(int initialPosition, int finalPosition) {
		super();
		this.initialPosition = initialPosition;
		this.finalPosition = finalPosition;
	}

	public int getInitialPosition() {
		return initialPosition;
	}

	public void setInitialPosition(int initialPosition) {
		this.initialPosition = initialPosition;
	}

	public int getFinalPosition() {
		return finalPosition;
	}

	public void setFinalPosition(int finalPosition) {
		this.finalPosition = finalPosition;
	}

}
