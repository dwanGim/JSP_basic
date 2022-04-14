package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class PreparedInsert {

	public static void main(String[] args) {
		// insert구문을 구현해보세요.
		// Scanner로 id, pw, name, eamil을 입력받아서
		// INSERT 구문의 ?를 채워주시면 됩니다.
		// ? 가 네 개이므로 주의해주세요.
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		Scanner sc = new Scanner(System.in);
		System.out.println("가입 시 사용할 아이디를 입력해주세요.");
		String uId = sc.nextLine();
		System.out.println("가입 시 사용할 패스워드를 입력해주세요.");
		String uPw = sc.nextLine();
		System.out.println("가입 시 사용할 이름을 입력해주세요.");
		String uName = sc.nextLine();
		System.out.println("가입 시 사용할 이메일을 입력해주세요.");
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
