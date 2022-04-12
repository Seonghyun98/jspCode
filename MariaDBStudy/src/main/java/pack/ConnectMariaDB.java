package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class ConnectMariaDB {
	
	//url Data
	private static final String DB_DRIVER_CLASS = "org.mariadb.jdbc.Driver";
	private static final String DB_URL = "jdbc:mariadb://192.168.153.1:3306/study";


	//User Data
	private static final String DB_USERNAME = "root";
	private static final String DB_PASSWORD = "Roqkf159";
	
	



	/*private static Connection conn;*/

	Statement stmt = null;



	private void connectDB() {

		ResultSet rs = null;

		try {

			Class.forName(DB_DRIVER_CLASS);

			Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

			System.out.println("연결성공");
			System.out.println(connection);
			
			String query = "select * from student";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				String number = rs.getString(1);
				String name = rs.getString(2);

				System.out.println("번호 : " + number);
				System.out.println("이름 : " + name);

			}
			



		} catch (ClassNotFoundException e) {

			// TODO Auto-generated catch block

			System.out.println("드라이브 로딩 실패");

		} catch (SQLException e) {

			//  TODO Auto-generated catch block

			System.out.println("DB 연결 실패");

		}

	}


	public void connect() {

		ConnectMariaDB con = new ConnectMariaDB();

		con.connectDB();

	}



	
	
}