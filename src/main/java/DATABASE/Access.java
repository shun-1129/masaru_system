package DATABASE;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class Access {
    private final String USER = "SD25";
	private final String PASS = "SD25";
	private final String URL = "jdbc:mariadb://localhost/masaru";
	private final String Driver = "org.mariadb.jdbc.Driver";
	
	ArrayList<HashMap<String, String>> LIST;
	
	public ArrayList<HashMap<String, String>> getData() {
		return this.LIST;
	}
	public void TEST() {
		System.out.println("ACCESS OK!!!");
	}
	
	public void Database_Access(String Query) {
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;
		StringBuffer ERMSG = null;
		
		this.LIST = new ArrayList<HashMap<String, String>>();
		
		try {
			Class.forName(this.Driver);
			
			connection = DriverManager.getConnection(this.URL, this.USER, this.PASS);
			statement = connection.createStatement();
			
			rs = statement.executeQuery(Query);
			ResultSetMetaData rsmd = rs.getMetaData();

			HashMap<String, String> map = null;
			
			while(rs.next()) {
				map = new HashMap<String, String>();
				for(int i = 1; i <= rsmd.getColumnCount(); i++) {
					map.put(String.valueOf(i), rs.getString(i));
				}
				this.LIST.add(map);
			}
			
		} catch(ClassNotFoundException e) {
			ERMSG = new StringBuffer();
			ERMSG.append(e.getMessage());
		} catch(SQLException e) {
			ERMSG = new StringBuffer();
			ERMSG.append(e.getMessage());
		} catch(Exception e) {
			ERMSG = new StringBuffer();
			ERMSG.append(e.getMessage());
		} finally {
			try {
				if(rs != null) rs.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(SQLException e) {
				ERMSG = new StringBuffer();
				ERMSG.append(e.getMessage());
			}
		}
	}
}
