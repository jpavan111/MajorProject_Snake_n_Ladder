package Entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
	@Entity
	@Table(name = "user")
	public class User implements Serializable {
	    private static final long serialVersionUID = 1L;

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		@Column(nullable = false, unique = true)
		private String username;
		@Column(nullable = false, unique = true)
		private String email;
		@Column(nullable = false)
		private String password;
		@Column(nullable = false)
		private String myhash;
		@Column(name= "active", columnDefinition = "int(1) default '0'")
		private int active;
		
		public User() {
			super();
		}

		public User(String username, String email, String password, String myhash) {
			super();
			this.username = username;
			this.email = email;
			this.password = password;
			this.myhash = myhash;
		}


		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}



		public String getMyhash() {
			return myhash;
		}


		public void setMyhash(String myhash) {
			this.myhash = myhash;
		}



		public int getActive() {
			return active;
		}



		public void setActive(int active) {
			this.active = active;
		}
	

	}

