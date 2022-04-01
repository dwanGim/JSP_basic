package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// Sccaner를 이용해서 user_id를 입력받은 다음
		// SELECT 문 실행 구문들을 응용해서
		// WHERE uid = 입력받은 아이디 형식으로
		// 사용자가 조회한 아이디의 정보만
		// 콘솔에 찍히도록 작성해보겠습니다.
		
		// WHERE 절이
		// WHERE user_id = "아이디" 와 같이 따옴표가 포함되니
		// 아이디명 앞 뒤로 따옴표가 들어갈 수 있도록
		// 전달 쿼리명을 신경써야합니다.
		System.out.println("조회하고 싶은 아이디를 입력해주세요");
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
					System.out.println(uid + "는 없는 아이디 입니다.");
				}
			}	catch (Exception e)	{
				e.printStackTrace();
			}
		

	}
		

}


