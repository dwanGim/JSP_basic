package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class PreparedInsert {

	public static void main(String[] args) {
		// insert������ �����غ�����.
		// Scanner�� id, pw, name, eamil�� �Է¹޾Ƽ�
		// INSERT ������ ?�� ä���ֽø� �˴ϴ�.
		// ? �� �� ���̹Ƿ� �������ּ���.
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		Scanner sc = new Scanner(System.in);
		System.out.println("���� �� ����� ���̵� �Է����ּ���.");
		String uId = sc.nextLine();
		System.out.println("���� �� ����� �н����带 �Է����ּ���.");
		String uPw = sc.nextLine();
		System.out.println("���� �� ����� �̸��� �Է����ּ���.");
		String uName = sc.nextLine();
		System.out.println("���� �� ����� �̸����� �Է����ּ���.");
		String uMail = sc.nextLine();
		
		try {
			Class.forName(dbType);
			
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			
			
			String sql = "INSERT INTO userinfo VALUES(?, ?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, uId);
			pstmt.setString(2, uPw);
			pstmt.setString(3, uName);
			pstmt.setString(4, uMail);
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sc.close();
		}
		
		
	}

}
