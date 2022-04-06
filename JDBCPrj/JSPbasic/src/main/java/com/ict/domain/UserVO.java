package com.ict.domain;

public class UserVO {
	// VO 클래스는 일반적으로 특정 테이블의 자료를 한 row 단위로 저장할 수 있도록
	// 컬럼 정보를 변수로 나열한 것 입니다.
	// 각 컬럼에 대응하는 변수를 선언해줍니다.
	private String userId;
	private String userPw;
	private String userName;
	private String Email;
	

	// private로 선언했기 때문에 getter/setter를 생성합니다.
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}


	
	
}
