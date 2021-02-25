package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="General_Knowledge")
public class Dice {
	
	@Id
	@Column(name="value")
	private int value;

	public Dice() {
		super();
	}

	public Dice(int value) {
		super();
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

}
