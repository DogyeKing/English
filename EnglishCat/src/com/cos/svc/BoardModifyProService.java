package com.cos.svc;

import java.sql.Connection;

import com.cos.dao.BoardDAO;
import com.cos.dto.BoardBean;
import com.cos.util.DBManager;

public class BoardModifyProService {

	public boolean isArticleWriter (int board_num, String pass) throws Exception{
		
		boolean isArticleWriter = false;
		Connection conn = DBManager.getConnection();
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.setConnection(conn);
		isArticleWriter = boardDAO.isArticleWriter(board_num, pass);
		DBManager.close(conn);
		return isArticleWriter;
		
	}
		
		
		public boolean modifyArticle(BoardBean article) throws Exception{
			
			boolean isModifySuccess = false;
			Connection conn = DBManager.getConnection();
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.setConnection(conn);
			int updateCount = boardDAO.updateArticle(article);
			
			if(updateCount > 0) {
				DBManager.commit(conn);
				isModifySuccess = true;
			} else {
				DBManager.rollback(conn);
			}
					
					DBManager.close(conn);
					return isModifySuccess;
			
		}
		

}
