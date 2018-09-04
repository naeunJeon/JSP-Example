package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//데이터베이스에 연결하고 select, insert, update, delete 작업을 실행해주는 클래스
public class MemberDao {

	String id = "root";
	String pass = "12Sqecd34!";
	String url = "jdbc:mariadb://localhost:3306/test";
	
	Connection conn;			//데이터베이스에 접근할 수 있도록 설정
	PreparedStatement pstmt;	//데이터베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs;				//데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	//데이터 베이스에 접근할 수 있도록 도와주는 메소드
	public void getConn() {
		try{
			//1.해당 데이터 베이스를 사용한다고 선언
			Class.forName("org.mariadb.jdbc.Driver");
			//2.해당 데이터 베이스에 접속
			conn = DriverManager.getConnection(url, id, pass);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//데이터 베이스에 한사람의 회원 정보를 저장해주는 메소드
	public void insertMember(MemberBean mbean) {
		try{
			getConn();
			String sql = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			
			pstmt.executeUpdate();	//insert, update, delete 시 사용하는 메소드
			
			//자원반납
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
