package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// ��ĳ�ʸ� �̿��ؼ�
		// ������ ���̵�, �ش� ���̵� ���� ���ο� ���, ���ο� �̸�,
		// ���ο� �̸����� �Է� �޾��ֽø� �˴ϴ�.
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�����ϰ� ���� ���̵� �Է����ּ���.");
		String uId = sc.nextLine();
		System.out.println("������ �н����带 �Է����ּ���.");
		String newPw = sc.nextLine();
		System.out.println("������ �̸��� �Է����ּ���.");
		String newName = sc.nextLine();
		System.out.println("������ �̸����� �Է����ּ���.");
		String newMail = sc.nextLine();
		
		System.out.println( "������ ���� ���� pw : "+ newPw + " / �̸� : " +
				newName + " / ���� : " + newMail + "  ���� ������ �����Ͻðڽ��ϱ�? Y/N");
		String yn = sc.nextLine();
		
		if (yn.equals("Y")) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC",
														"root",
														"mysql"); 
				
				
				String sql = "UPDATE userinfo SET user_pw = '" + newPw + "', user_name = '" + newName + "', email = '" + newMail +"' WHERE user_id = '" + uId + "'";
				Statement stmt = con.createStatement();
				stmt.executeUpdate(sql);
				
				System.out.println("���� �Ϸ�");
				
			
				}	catch (Exception e)	{
					e.printStackTrace();
				} finally {
					sc.close();
				}
		} else if (yn.equals("N")){
			System.out.println("������ ����մϴ�.");
			
		}else {
			System.out.println("Y / N �� �� �ϳ��� �Է����ּ���.");
		} 

	}

}
