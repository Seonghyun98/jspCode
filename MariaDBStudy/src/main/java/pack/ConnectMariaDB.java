package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class ConnectMariaDB {
	
	//url Data
	//"jdbc:mariadb://192.168.153.1:3306/database Name";
	private static final String DB_DRIVER_CLASS = "org.mariadb.jdbc.Driver";
	private static final String DB_URL = "jdbc:mariadb://192.168.153.1:3306/study";

	//User Data
	// ID, password
	private static final String DB_USERNAME = "root";
	private static final String DB_PASSWORD = "Roqkf159";
	
	
	/*private static Connection conn;*/

	Statement stmt = null;



	private void connectDB() {

		ResultSet rs = null;
		
		//try 도중 과정에서 error 가 있으면 catch 로 잡아주는 구문.
		//try 실행중 구문이 실행이 안되면 catch로 바로 넘어가버린다.
		//예를 들어 연결 성공까지 println 이 되어야만 데이터 베이스 접속에 성공한거다.
		try {

			Class.forName(DB_DRIVER_CLASS);
			
			// 위에서 선언한 url,id,pw로 로그인
			Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

			System.out.println("연결성공@!@!@!@!");
			System.out.println(connection);
			
			
			stmt = connection.createStatement();
			// db에 써줄 쿼리문 mariadb 에서 이렇게 작성해도 결과가 조회된다
			String query = "select * from student";
			
			
			rs = stmt.executeQuery(query);
			
			// table 이 끝날떄까지 출력
			while (rs.next()) {
				String number = rs.getString(1);
				String name = rs.getString(2);

				System.out.println("번호 : " + number);
				System.out.println("이름 : " + name);

			}
			


			//catch = 에러 잡아주는칸
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