package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class PreparedDelete {

	public static void main(String[] args) {
		// 특정 아이디를 Scanner로 입력받아 입력받은 아이디를 삭제하는 로직을 작성
		// PreparedStatement 를 이용해보겠습니다.
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		Scanner sc = new Scanner(System.in);
		System.out.println("삭제하고 싶은 아이디를 입력해주세요.");
		String uId = sc.nextLine();
		
		try {
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			String sql = "DELETE FROM userinfo WHERE user_id = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uId);
			System.out.println(sql);
			pstmt.executeUpdate();
			
			
		} catch(Exception e) {
			
		} finally {
			sc.close();
		}
	}

}
