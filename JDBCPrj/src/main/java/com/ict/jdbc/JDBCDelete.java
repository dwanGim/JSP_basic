package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDelete {

	public static void main(String[] args) {
		// Scanner�� ������ ���̵� �Է¹�����
		
		// DB�� ������ �������� �����ִ� ������ �ۼ����ּ���.
		
		// �����Ǿ����� SELECT �ڵ峪 Ȥ�� Workbench�� �̿��� Ȯ���غ��ڽ��ϴ�.
		
		Scanner sc = new Scanner(System.in);
		System.out.println("������ ������ ���̵� �Է����ּ���.");
		String uId = sc.nextLine();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC",
													"root",
													"mysql"); 
			
			
			String sql = "DELETE FROM userinfo WHERE user_id = '" + uId + "'";
			Statement stmt = con.createStatement();
			stmt.executeUpdate(sql);
			
			System.out.println(sql);
			
		
			}	catch (Exception e)	{
				e.printStackTrace();
			} finally {
				sc.close();
			}
		

	}
		

}
