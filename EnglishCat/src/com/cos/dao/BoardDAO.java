package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.cos.dto.BoardBean;
import com.cos.util.DBManager;




public class BoardDAO {
	DataSource ds;
	Connection conn;
	private static BoardDAO boardDAO;
	
	public BoardDAO() {
	
	}
	
	public static BoardDAO getInstance() {
		if(boardDAO == null) {
			boardDAO = new BoardDAO();
		}
		return boardDAO;
		
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public int selectListCount() {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM BOARD");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
			
		} catch (Exception ex) {
			System.out.println("getListCount 에러 : " + ex );
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<BoardBean> selectArticleList(int page, int limit){
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM BOARD ORDER BY BOARD_RE_REF DSEC, BOARD_RE_SEQ ASC LIMIT ?,10";
		ArrayList<BoardBean> articleList = new ArrayList<>();
		BoardBean board = null;
		int startrow = (page-1)*10;  //읽기 시작할 row 번호
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, startrow);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_NAME(rs.getString("BOARD_NAME"));
				board.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
				board.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
				board.setBOARD_FILE(rs.getString("BOARD_FILE"));
				board.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
				board.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
				board.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
				board.setBOARD_RE_READCOUNT(rs.getInt("BOARD_READCOUNT"));
				board.setBOARD_DATE(rs.getDate("BOARD_DATE"));
				articleList.add(board);
			}
			
		} catch (Exception ex) {
			System.out.println("getBoardList 에러 : " + ex);
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return articleList;
	}
	//글내용 보기
	public BoardBean selectArticle(int board_num) {
		
		String SQL = "SELECT * FROM BOARD WHERE BOARD_NUM = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean boardBean = null;
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, board_num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				boardBean = new BoardBean();
				boardBean.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				boardBean.setBOARD_NAME(rs.getString("BOARD_NAME"));
				boardBean.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
				boardBean.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
				boardBean.setBOARD_FILE(rs.getString("BOARD_FILE"));
				boardBean.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
				boardBean.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
				boardBean.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
				boardBean.setBOARD_RE_READCOUNT(rs.getInt("BOARD_READCOUNT"));
				boardBean.setBOARD_DATE(rs.getDate("BOARD_DATE"));
			
			
			}
		} catch (Exception ex) {
			System.out.println("getDetail 에러 : " + ex);
		} finally{
			DBManager.close(conn, pstmt);
		}
		return boardBean;
	}
	
	public int updateArticle (BoardBean article) {
		
		int updateCount = 0;
		PreparedStatement pstmt = null;
		String SQL = "UPDATE BOARD SET BOARD_SUBJECT = ?, BOARD_CONTENT = ? WHERE BOARD_NUM = ? ";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, article.getBOARD_SUBJECT());
			pstmt.setString(2, article.getBOARD_CONTENT());
			pstmt.setInt(3, article.getBOARD_NUM());
			updateCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("boardModify 에러 : " + ex); 
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return updateCount;
	}
	
	//조회수 업데이트
	public int updateReadCount(int board_num) {
		
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String SQL = "UPDATE BOARD SET BOARD_READCOUNT = " + "BOARD_READCOUNT+1 WHERE BOARD_NUM = " + board_num;
		
		try {
			pstmt = conn.prepareStatement(SQL);
			updateCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("setReadCountupdate 에러 :" + ex);
		}
		
		return updateCount;
	
	
	}
}
