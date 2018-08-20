package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.cos.action.Action;
import com.cos.dao.BoardDAO;
import com.cos.dto.BoardVO;
import com.cos.util.Script;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		BoardVO board = new BoardVO();
		BoardDAO dao = new BoardDAO();
		
		board.setId(request.getParameter("id"));
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		
		int result2 = dao.insert(board);
		if(result2 == 1) {
			Script.moving(response, "글쓰기 성공", url);
		}else if(result2 == -1) {
			Script.moving(response, "DB 에러");
		}
		
		}
		
	}

