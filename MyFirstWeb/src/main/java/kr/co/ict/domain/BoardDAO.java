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
			String sql = "SELECT * FROM boardTbl ORDER BY board_num DESC";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				
				
				board.setBoardNum(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setContent(rs.getString(3));
				board.setWriter(rs.getString(4));
				board.setbDate(rs.getDate(5));
				board.setmDate(rs.getDate(6));
				board.setHit(rs.getInt(7));
				
				
				boardList.add(board);
				
			}
			
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
		
		
	} // getBoardList() END.
	

	
	
	
	// boardTbl에서 row를 1개 가져오거ㅏ(글 번호 존재 시), 안 가져옴(없는 글 번호 입력 시)
	public BoardVO getBoardDetail(int boardNum) {

		Connection con = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		BoardVO board = new BoardVO();
		
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM boardTbl WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board.setBoardNum(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setContent(rs.getString(3));
				board.setWriter(rs.getString(4));
				board.setbDate(rs.getDate(5));
				board.setmDate(rs.getDate(6));
				board.setHit(rs.getInt(7));
				System.out.println("데이터 확인용 : " + board);
			} else {
				System.out.println("해당 계정이 없습니다.");
			}
			
			
			} catch(Exception e){
				e.printStackTrace();
			} finally {
				try {
					con.close();
					rs.close();
					pstmt.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			return board;
	} // getBoardDetail(String boardNum) END.
	
	public void boardInsert(String title, String content, String writer) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			
			String sql = "INSERT INTO boardTbl (title, content, writer) VALUES (?, ?, ?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, writer);
			System.out.println(title);
			System.out.println(writer);
			System.out.println(content);
			
			System.out.println(sql);
			pstmt.executeUpdate();
			System.out.println("리스트 업데이트 완료");
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	} // boardInsert() END.
	
	public void boardDelete(int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			String sql = "DELETE FROM boardTbl WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, boardNum);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
				}catch(Exception e) {
				e.printStackTrace();
				}
		}
	} //boardDelete END.
	
	public void boardUpdate(String title, String content, int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			String sql = "UPDATE boardTbl SET title = ?, content = ?, mdate = now() WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, boardNum);
			
			System.out.println(sql);
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
				pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	} //  boardUpdate END.
	
	
	
	
} // BoardDAO END.

