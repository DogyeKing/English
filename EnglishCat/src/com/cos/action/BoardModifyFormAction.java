//글 수정폼 보기 요청을 처리하는 Action 클래스

package com.cos.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.dto.ActionForward;
import com.cos.dto.BoardBean;
import com.cos.svc.BoardDetailService;

public class BoardModifyFormAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		ActionForward forward = new ActionForward();
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num);
		request.setAttribute("article", article);
		forward.setPath("/board/qna_board_modify.jsp");
		return forward;
		

	}
}
