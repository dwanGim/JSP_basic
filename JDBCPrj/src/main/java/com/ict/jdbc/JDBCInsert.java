package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCInsert {

	public static void main(String[] args) {
		// Scanner�� id, pw, name, email�� �Է¹޾�
		// INSERT INTO ������ �̿��� DB�� �����͸� �����ϵ��� �غ��ڽ��ϴ�.
		
		// SELECT Q1ó�� �ۼ����ֽõ�(�Է¹ޱ�, DB����, ������ ���� ��...)
		// SELECT ������ ������ ������ INSERT, DELETE, UPDATE ������
		// ��ȸ �������� ������ �����Ͱ� ���� ������ ResultSet�� �ʿ�� ���� �ʽ��ϴ�.
		// ������ �� ���� MySQL Workbench�� �Ѽ� ������ �Է� ���θ� Ȯ�����ֽðų�
		// Ȥ�� SELECTQ1�� �Է��� ���̵� �־� Ȯ�����ֽø� �˴ϴ�.
		
		// ������ ���� �� SELECT ������ executeQuery("������");�� ȣ��������
		// SELECT�� �ƴ� ������ executeUpdate("������");�� ��� ȣ���ϸ�
		// ResultSet�� �º��� ���� �ʾƵ� �˴ϴ�.
		
		Scanner sc = new Scanner(System.in);
		System.out.println("���̵� �Է����ּ���.");
		String uId = sc.nextLine();
		System.out.println("��й�ȣ�� �Է����ּ���.");
		String uPw = sc.nextLine();
		System.out.println("���� �̸��� �Է����ּ���.");
		String uName = sc.nextLine();
		System.out.println("email�� �Է����ּ���.");
		String uMail = sc.nextLine();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC",
													"root",
													"mysql"); 
			
			
			String sql = "INSERT INTO userinfo VALUES ('" + uId + "', '" + uPw + "', '" + uName + "', '" + uMail +"')";
			System.out.println(sql);
			Statement stmt = con.createStatement();
			stmt.executeUpdate(sql);
			
		
			
			}	catch (Exception e)	{
				e.printStackTrace();
			}
		

	}
		

}