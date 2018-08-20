package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.dto.BoardVO;
import com.cos.util.DBManager;


public class BoardDAO {

	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	//페이징 10개씩
	public List<BoardVO> select_paging(int pageNum){
		String SQL = "SELECT * FROM board ORDER BY num DESC limit ?, 10";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, pageNum);
			rs = pstmt.executeQuery();
			List<BoardVO> list = new ArrayList<>();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setNum(rs.getInt("num"));
				board.setId(rs.getString("id"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setWritedate(rs.getString("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				list.add(board);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int nextPage(int pageNum) {
		String SQL = "SELECT * FROM board ORDER BY num DESC limit ?,10";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, pageNum);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	public int insert(BoardVO board) {
		String SQL = "INSERT INTO board(title, content, writedate, id) VALUE(?,?,now(),?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getId());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		} return -1;
	}

	
}