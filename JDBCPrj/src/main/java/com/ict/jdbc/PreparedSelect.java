package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class PreparedSelect {

	public static void main(String[] args) {
		// ������ �̸� �����մϴ�.
		// 
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("��ȸ�� ���̵� �Է����ּ���.");
		String id = sc.nextLine();
		
		try {
			// ���� ���� �ʰ� ���������� �����ϱ� ������ �ξ� �������� �������ϴ�.
			// 1. DB���� ����
			Class.forName(dbType);
			// 2. DB ����
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			// 3. PreparedStatement ������ ���� SQL �������� �������� ? �� ä��� ������ �۵��մϴ�.
			// ������ �ۼ� �� �߰��� ����ڰ� �Է��ϴ� �κп� ���ؼ��� ?�� ��ü�ؼ� �����ϴ�.
			// ����ǥ ���δ� ���̻� ������� �ʾƵ� �˴ϴ�.
			// ?�� �� �� �̻� ������ ���� �ֽ��ϴ�.
			String sql = "SELECT * FROM userinfo WHERE user_id=?"; // ?�� ����� �Է� ���̵� �� �κ��Դϴ�.
			
			// pstmt ������ ����� �����ϸ鼭 sql ������ ���� �־��ݴϴ�.
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			// ?�� �� �ڷḦ �������ݴϴ�.
			pstmt.setString(1, id); // ���ʺ��� 1��° ? �� id ������ ����ִ� ����� �Է� ������ �־��شٴ� �ǹ�
			
			// 4. ������ ���� (SELECT������ ���� ����� ������ ResulSet���� �޽��ϴ�.
			ResultSet rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println("--------------");
			} else {
				System.out.println(id + "�� ���� ���̵��Դϴ�.");
			}
			
			
		} catch(Exception e) {
			
		} finally {
			sc.close();
		}
	}

}
