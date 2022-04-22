package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class PreparedSelect {

	public static void main(String[] args) {
		// 변수를 미리 선언합니다.
		// 
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("조회할 아이디를 입력해주세요.");
		String id = sc.nextLine();
		
		try {
			// 직접 적지 않고 변수명으로 관리하기 문에 훨씬 가독성이 높아집니다.
			// 1. DB종류 지정
			Class.forName(dbType);
			// 2. DB 연결
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			// 3. PreparedStatement 구문은 먼저 SQL 쿼리문을 만들어놓고 ? 를 채우는 식으로 작동합니다.
			// 쿼리문 작성 시 중간에 사용자가 입력하는 부분에 대해서만 ?로 대체해서 적습니다.
			// 따옴표 여부는 더이상 고려하지 않아도 됩니다.
			// ?는 두 개 이상 나열할 수도 있습니다.
			String sql = "SELECT * FROM userinfo WHERE user_id=?"; // ?가 사용자 입력 아이디가 들어갈 부분입니다.
			
			// pstmt 변수를 만들어 세팅하면서 sql 구문을 같이 넣어줍니다.
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			// ?에 들어갈 자료를 정의해줍니다.
			pstmt.setString(1, id); // 왼쪽부터 1번째 ? 에 id 변수에 들어있는 사용자 입력 변수를 넣어준다는 의미
			
			// 4. 쿼리문 실행 (SELECT구문의 실행 결과는 여전히 ResulSet으로 받습니다.
			ResultSet rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println("--------------");
			} else {
				System.out.println(id + "는 없는 아이디입니다.");
			}
			
			
		} catch(Exception e) {
			
		} finally {
			sc.close();
		}
	}

}