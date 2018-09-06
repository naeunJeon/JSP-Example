package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
			pstmt = conn.prepareStatement(sql);
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
	
	//���ȸ���� ������ �������ִ� �޼ҵ� ȣ��
	public ArrayList<MemberBean> allSelectMember() {
		ArrayList<MemberBean> arr = new ArrayList<>();
		
		//�����ͺ��̽��� ������ ����ó�� �ؾ���
		try {
			getConn();
			//���� �غ�
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			
			//������ �����Ų ����� �����ؼ� �޾���
			rs = pstmt.executeQuery();
			
			//�ݺ����� ����ؼ�rs�� ����� �����͸� �����س��ƾ���
			while(rs.next()) {//����� ������ ��ŭ���� �ݺ����� �����ڴٶ�� ��
				MemberBean bean  = new MemberBean();	//�÷����� �������� �����͸� ��Ŭ������ ����
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
			//�ڿ� �ݳ�
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		//������� ����Ʈ�� ��ȯ
		return arr;
	}
	
	public MemberBean oneSelectMember(String id) {
		//�ѻ���� ���� ������ �����ϱ⿡ ��Ŭ���� ��ü ����
		MemberBean bean = new MemberBean();
		
		try {
			//Ŀ�ؼ� ����
			getConn();
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			//?�� ���� ����
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {//���ڵ尡 �ִٸ�
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}
			// �ڿ� �ݳ�
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
