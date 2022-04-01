package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDelete {

	public static void main(String[] args) {
		// Scanner로 삭제할 아이디를 입력받으면
		
		// DB에 삭제용 쿼리문을 날려주는 로직을 작성해주세요.
		
		// 삭제되었는지 SELECT 코드나 혹읜 Workbench를 이용해 확인해보겠습니다.
		
		Scanner sc = new Scanner(System.in);
		System.out.println("삭제할 유저의 아이디를 입력해주세요.");
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
