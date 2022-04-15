package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class PreparedUpdate {

	public static void main(String[] args) {
		
		
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		Scanner sc = new Scanner(System.in);
		System.out.println(".");
		String uId = sc.nextLine();
		System.out.println(".");
		String uPw = sc.nextLine();
		System.out.println(".");
		String uName = sc.nextLine();
		System.out.println(".");
		String uMail = sc.nextLine();
		
		try {
			Class.forName(dbType);
			
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			
			
			String sql = "UPDATE userinfo SET user_pw = ?, user_name = ?, email = ? WHERE user_id = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, uPw);
			pstmt.setString(2, uName);
			pstmt.setString(3, uMail);
			pstmt.setString(4, uId);
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			
			e.printStackTrace();
		
		} finally {

			sc.close();
		
		}
		

	}

}
