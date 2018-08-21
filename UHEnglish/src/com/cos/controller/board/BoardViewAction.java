package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.BoardDAO;
import com.cos.dto.BoardVO;
import com.cos.util.MyUtil;
import com.cos.util.Script;

public class BoardViewAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/viewPage.jsp";
		
		BoardDAO dao = new BoardDAO();
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardVO board  = dao.select(num);
		
		if(board == null) {
			Script.moving(response, "DB 에러");
		}else {
			board.setTitle(MyUtil.getReplace(board.getTitle()));
			request.setAttribute("board", board);
			
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
			
		}
	}
}
