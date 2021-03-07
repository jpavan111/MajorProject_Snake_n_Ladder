package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

	
	private final String url = "jdbc:mysql://localhost:3306/major_project_snake_n_ladder";
	private final String username = "root"; // Database username
	private final String password = "dac20"; // database password

	public boolean check(String uname, String pass) throws ClassNotFoundException { // uname=our entered username pass= our entered password
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection con = DriverManager.getConnection(url, username, password);){
			
			String sql = "select * from login where username=? and password=?";
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, uname);
			st.setString(2, pass);
			
			ResultSet rs = st.executeQuery();
			
			if (rs.next()) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return false;

	}
}
