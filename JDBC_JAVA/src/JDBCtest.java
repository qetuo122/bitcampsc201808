import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCtest {

	public static void main(String[] args) {
		
		
		try {
			
			// 1. DBMS(Oracle) 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:152:orcl";
			String user = "scott";
			String pw = "tiger";
			
			// 2. 데이터베이스 연결
			Connection connection = DriverManager.getConnection(url,user,pw);
			
			System.out.println("데이터베이스 연결 성공");
			
			// 3. 데이터베이스 작업
			
			
			// 4. 데이터베이스 연결 종료
			connection.close();
			
		} catch (ClassNotFoundException e) {
			
			System.out.println("해당 클래스를 찾을 수 없습니다.");
			System.out.println("DBMS 드라이버 로드 실패");
			
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			System.out.println("데이터베이스 연결 샐패!");
			e.printStackTrace();
			
		}

	}

	
	
	
	
	
	
	
	
}
