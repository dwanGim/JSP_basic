package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// Sccaner�� �̿��ؼ� user_id�� �Է¹��� ����
		// SELECT �� ���� �������� �����ؼ�
		// WHERE uid = �Է¹��� ���̵� ��������
		// ����ڰ� ��ȸ�� ���̵��� ������
		// �ֿܼ� �������� �ۼ��غ��ڽ��ϴ�.
		
		// WHERE ����
		// WHERE user_id = "���̵�" �� ���� ����ǥ�� ���ԵǴ�
		// ���̵�� �� �ڷ� ����ǥ�� �� �� �ֵ���
		// ���� �������� �Ű����մϴ�.
		System.out.println("��ȸ�ϰ� ���� ���̵� �Է����ּ���");
		Scanner sc = new Scanner(System.in);
		String uid = sc.nextLine();
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC",
													"root",
													"mysql"); 
			Statement stmt = con.createStatement();
			
			String sql = "SELECT * FROM userinfo WHERE user_id='" + uid + "'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			System.out.println(sql);
			
			if (rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println("---------------");
				} else {
					System.out.println(uid + "�� ���� ���̵� �Դϴ�.");
				}
			}	catch (Exception e)	{
				e.printStackTrace();
			}
		

	}
		

}


