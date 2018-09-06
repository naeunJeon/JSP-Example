package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
			pstmt = conn.prepareStatement(sql);
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
	
	//모든회원의 정보를 리턴해주는 메소드 호출
	public ArrayList<MemberBean> allSelectMember() {
		ArrayList<MemberBean> arr = new ArrayList<>();
		
		//데이터베이스는 무조건 예외처리 해야함
		try {
			getConn();
			//쿼리 준비
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			
			//쿼리를 실행시킨 결과를 리턴해서 받아줌
			rs = pstmt.executeQuery();
			
			//반복문을 사용해서rs에 저장된 데이터를 추출해놓아야함
			while(rs.next()) {//저장된 데이터 만큼까지 반복문을 돌리겠다라는 뜻
				MemberBean bean  = new MemberBean();	//컬럼으로 나뉘어진 데이터를 빈클래스에 저장
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				arr.add(bean);
			}
			//자원 반납
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		//다저장된 리스트를 반환
		return arr;
	}
	
	public MemberBean oneSelectMember(String id) {
		//한사람에 대한 정보만 리턴하기에 빈클래스 객체 생성
		MemberBean bean = new MemberBean();
		
		try {
			//커넥션 연결
			getConn();
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			//?에 값을 맵핑
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {//레코드가 있다면
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}
			// 자원 반납
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bean;
	}
	
	public String getPass(String id) {
		String pass = "";
		try {
			getConn();
			String sql = "select pass1 from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pass = rs.getString("pass1");
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return pass;
	}
	
	public void updateMember(MemberBean bean) {
		getConn();
		
		try {
			String sql = "update member set email=?, tel=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getTel());
			pstmt.setString(3, bean.getId());
			
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
