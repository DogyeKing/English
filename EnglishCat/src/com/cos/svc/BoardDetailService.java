package com.cos.svc;

import java.sql.Connection;

import com.cos.dao.BoardDAO;
import com.cos.dto.BoardBean;
import com.cos.util.DBManager;

public class BoardDetailService {

	public BoardBean getArticle(int board_num) throws Exception{
		
		BoardBean article = null;
		Connection conn = DBManager.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int updateCount = boardDAO.updateReadCount (board_num);
		
		if(updateCount > 0) {
			DBManager.commit(conn);
		} else {
			DBManager.rollback(conn);
		}
		
		article = boardDAO.selectArticle(board_num);
		DBManager.close(conn);
		return article;

	}
}
