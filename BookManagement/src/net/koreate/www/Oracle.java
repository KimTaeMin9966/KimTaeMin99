package net.koreate.www;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Oracle {

	private Connection dbConn;

	private static Oracle oracle;

	private Oracle() {}

	public static Oracle getInstance() {
		if (oracle == null) {
			oracle = new Oracle();
		}
		return oracle;
	}

	public Connection getConnection() {
		String user = "scott";
		String pw = "tiger";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url, user, pw);
			System.out.println("Database에 연결 되었습니다.");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 찾을 수 없습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("계정 정보 접속 실패");
			e.printStackTrace();
		}
		return dbConn;
	}
}
