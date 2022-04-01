package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCSelect {

	public static void main(String[] args) {
		// JDBC ����
		
		// MySQL�� ������ ������ �˸��� ���� forName ���ο� MySQL�� ���������� �����ϴ�.
		// SQL �����ڵ�� �ݵ�� try~catch �� ���ο� �ֵ��� �����˴ϴ�.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //  ���� Ÿ���� MySQL 8�������� ���
			// Ŀ�ؼ� ��ü�� ���� ���θ� Ȯ���մϴ�.
			// �Է¿�Ҵ� �����ּ�, MySQL ������, MySQL ��й�ȣ ������ �Է��մϴ�.
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC",
													"root", //DB ���� ���̵�
													"mysql"); // DB ��й�ȣ
			// java���� MySQL�� ������ �������� �ۼ��մϴ�.
			// �������� Statement��� ������ �����ؼ� ������� �մϴ�.
			Statement stmt = con.createStatement();
			// .executeQueru() ���ο� ������ �������� ���ڿ��� �ۼ��մϴ�.
			// SELECT���� �����Ҷ� executeQuery()�� �����մϴ�.
			// SELECT���� ������ ��� �ڷ�� ResultSet�̶�� �ڷ�� �޽��ϴ�.
			ResultSet rs = stmt.executeQuery("SELECT*FROM userinfo");
			
			// ResultSet�� �⺻������ row ������ŭ ���ο� �����͸� �����մϴ�.
			// ResultSet�� Ư����ȣ�� ��� ��ȸ�ϴ� ��캸�ٴ� ����������
			// ��� �����͸� ��ȸ�ϴ� ������ ���� ����մϴ�.
			// �� ó�� ResultSet�� -1���̶�� �ӽù�ȣ�� Ÿ������ ����ϴ�.
			// �� ��ȣ�� �ű�� ���� .next()�� ȣ���ϸ� ���� ��ȣ�� �Ѿ�ϴ�.
			
			// rs.next();�� ���� �ڷᰡ ���������� true; ������ false�� �����մϴ�.
			// rs.get�ڷ���(�ε�����ȣ(1����)), Ȥ�� rs.get�ڷ���("�÷���")�Է� ��
			// �ش� �ķ��� �ڷḦ ��ȯ�մϴ�.
			
			
			
			while(rs.next()) {
				// rs.get�ڷ��� ������ �̿��� ��ü �÷��� ��ȸ�ϴ� ����
			
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println("--------------");

				}
			}	catch (Exception e){
				e.printStackTrace();
		}
		

	}
}
