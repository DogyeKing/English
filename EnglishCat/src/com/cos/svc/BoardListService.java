package com.cos.svc;

import java.sql.Connection;
import java.util.ArrayList;

import com.cos.dao.BoardDAO;
import com.cos.dto.BoardBean;
import com.cos.util.DBManager;

public class BoardListService {

		public int getListCount() throws Exception{
			
			int listCount = 0;
			Connection conn = DBManager.getConnection();
			BoardDAO boardDAO = BoardDAO.getInstance();
			boardDAO.setConnection(conn);
			listCount = boardDAO.selectListCount();
			DBManager.close(conn);
			
			return listCount;
		}
		
		public ArrayList<BoardBean> getArticleList (int page, int limit) throws Exception{
			
			ArrayList<BoardBean> articleList = null;
			Connection conn = DBManager.getConnection();
			BoardDAO boardDAO = BoardDAO.getInstance();
			boardDAO.setConnection(conn);
			
			articleList = boardDAO.selectArticleList(page, limit);
			DBManager.close(conn);
			return articleList;
		}
}
