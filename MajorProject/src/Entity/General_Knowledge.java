package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="General_Knowledge")
public class General_Knowledge {
	
	@Id
	@Column(name="Id")
	private int id;
	
	@Column(name="Stage", nullable = false)
	private String stage;
	
	@Column(name="Question", nullable = false)
	private String question;
	
	@Column(name="Option_1", nullable = false)
	private String option1;
	
	@Column(name="Option_2", nullable = false)
	private String option2;
	
	@Column(name="Option_3", nullable = false)
	private String option3;
	
	@Column(name="Option_4", nullable = false)
	private String option4;
	
	@Column(name="Answer", nullable = false)
	private String Answer;
	
	
	public General_Knowledge() {
		super();
	}

	public General_Knowledge(int id, String stage, String question, String option1, String option2, String option3,
			String option4, String answer) {
		super();
		this.id = id;
		this.stage = stage;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		Answer = answer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getAnswer() {
		return Answer;
	}

	public void setAnswer(String answer) {
		Answer = answer;
	}

}
