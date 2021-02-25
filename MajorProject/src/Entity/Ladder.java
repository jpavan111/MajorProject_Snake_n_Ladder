package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Ladder")
public class Ladder {
	
	@Id
	@Column(name="Initial_Position")
	private int initialPosition;
	
	@Column(name="Final_Position")
	private int finalPosition;

	public Ladder() {
		super();
	}

	public Ladder(int initialPosition, int finalPosition) {
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
