package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//�����ͺ��̽��� �����ϰ� select, insert, update, delete �۾��� �������ִ� Ŭ����
public class MemberDao {

	String id = "root";
	String pass = "12Sqecd34!";
	String url = "jdbc:mariadb://localhost:3306/test";
	
	Connection conn;			//�����ͺ��̽��� ������ �� �ֵ��� ����
	PreparedStatement pstmt;	//�����ͺ��̽����� ������ ��������ִ� ��ü
	ResultSet rs;				//�����ͺ��̽��� ���̺��� ����� ���Ϲ޾� �ڹٿ� �������ִ� ��ü
	
	//������ ���̽��� ������ �� �ֵ��� �����ִ� �޼ҵ�
	public void getConn() {
		try{
			//1.�ش� ������ ���̽��� ����Ѵٰ� ����
			Class.forName("org.mariadb.jdbc.Driver");
			//2.�ش� ������ ���̽��� ����
			conn = DriverManager.getConnection(url, id, pass);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//������ ���̽��� �ѻ���� ȸ�� ������ �������ִ� �޼ҵ�
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
			
			pstmt.executeUpdate();	//insert, update, delete �� ����ϴ� �޼ҵ�
			
			//�ڿ��ݳ�
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
