package kr.co.ict.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	// 생성자를 만들어봅시다.
	// 이미 커넥션풀 설정이 되어있으니 UserDAO에서 활성화된 코드를 참조해서 만들겠습니다.
	private DataSource ds;
	
	public static BoardDAO dao = new BoardDAO();
	
	private BoardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static BoardDAO getInstance() {
		if(dao == null) {
			dao = new BoardDAO();
		}
		return dao;
	}
	
	// 게시판의 전체 글을 가져오는 getBoardList() 메서드를 만들어보겠습니다.
	// 전체 글을 가져오므로 List<BoardVO>를 리턴하면 됩니다.
	
	public List<BoardVO> getBoardList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<BoardVO> boardList = new ArrayList<>();
		
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM boardTbl";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				
				System.out.println("집어넣기 전 : " + board);
				board.setBoardNum(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setContent(rs.getString(3));
				board.setWriter(rs.getString(4));
				board.setbDate(rs.getDate(5));
				board.setmDate(rs.getDate(6));
				board.setHit(rs.getInt(7));
				
				System.out.println("집어넣은 후 : " + board);
				boardList.add(board);
				
			}
			System.out.println("리스트에 쌓인 자료 체크 : " + boardList);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
				rs.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return boardList;
		
		
	} // getAllUserList() END.
	

}
