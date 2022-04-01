package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// 스캐너를 이용해서
		// 수정할 아이디, 해당 아이디에 대한 새로운 비번, 새로운 이름,
		// 새로운 이메일을 입력 받아주시면 됩니다.
		
		Scanner sc = new Scanner(System.in);
		System.out.println("수정하고 싶은 아이디를 입력해주세요.");
		String uId = sc.nextLine();
		System.out.println("수정할 패스워드를 입력해주세요.");
		String newPw = sc.nextLine();
		System.out.println("수정할 이름을 입력해주세요.");
		String newName = sc.nextLine();
		System.out.println("수정할 이메일을 입력해주세요.");
		String newMail = sc.nextLine();
		
		System.out.println( "수정할 유저 정보 pw : "+ newPw + " / 이름 : " +
				newName + " / 메일 : " + newMail + "  다음 정보로 수정하시겠습니까? Y/N");
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
				
				System.out.println("수정 완료");
				
			
				}	catch (Exception e)	{
					e.printStackTrace();
				} finally {
					sc.close();
				}
		} else if (yn.equals("N")){
			System.out.println("수정을 취소합니다.");
			
		}else {
			System.out.println("Y / N 둘 중 하나를 입력해주세요.");
		} 

	}

}
