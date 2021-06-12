package DB;

import javax.naming.*;
import java.sql.*;
import javax.sql.DataSource;

public class DsCon {
	public static Connection getConnection() throws NamingException,SQLException {
		Context initContext = new InitialContext();
		initContext.lookup("java:/comp/env/jdbc/dbConnect");
		DataSource ds = (DataSource) initContext.lookup("java:/comp/env/jdbc/dbConnect");
		return ds.getConnection();
	}
}
