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
    private ArrayList<HashMap<String, String>> LIST;
    public void Database_Access(StringBuffer Query) {
        DATABASE.setting SETTING = new DATABASE.setting();
        String[] Setting_DATAS = SETTING.getDATA();
        
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        StringBuffer ERMSG = null;
        
        try{
            Class.forName(Setting_DATAS[2]);
            connection = DriverManager.getConnection(Setting_DATAS[3], Setting_DATAS[0], Setting_DATAS[1]);
            statement = connection.createStatement();
            resultSet = statement.executeQuery(Query.toString());
            ResultSetMetaData rsmd = resultSet.getMetaData();
            HashMap<String, String> map = null;
            this.LIST = new ArrayList<HashMap<String, String>>();
            while(resultSet.next()) {
                map = new HashMap<String, String>();
                for(int i = 1; i <= rsmd.getColumnCount(); i++)
                    map.put(String.valueOf(i), resultSet.getString(i));
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
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(SQLException e) {
				ERMSG = new StringBuffer();
				ERMSG.append(e.getMessage());
			}
		}
    }
    public ArrayList<HashMap<String, String>> getData() {
        return this.LIST;
    }
}
