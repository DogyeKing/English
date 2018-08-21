//모든 클라이언트의 요청을 받아서 제어하는 컨트롤러 클래스

package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.action.BoardDeleteProAction;
import com.cos.action.BoardDetailAction;
import com.cos.action.BoardListAction;
import com.cos.action.BoardModifyFormAction;
import com.cos.action.BoardModifyProAction;
import com.cos.action.BoardReplyFormAction;
import com.cos.action.BoardReplyProAction;
import com.cos.action.BoardWriteProAction;
import com.cos.dto.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String RequestURI=request.getRequestURI();
			String contextPath=request.getContextPath();
			String command=RequestURI.substring(contextPath.length());
			ActionForward forward = null;
			Action action = null;
			
	if(command.equals("/boardWriteForm.bo")){
		forward = new ActionForward();
		forward.setPath("/board/qna_board_write.jsp");
	}else if(command.equals("/boardWritePro.bo")) {
		action = new BoardWriteProAction();
		 try {
		forward=action.execute(request, response);
		} catch (Exception e) {
		e.printStackTrace();
		}		
			
	}else if(command.equals("/boardList.bo")) {
		action = new BoardListAction();
		try {
			forward=action.execute(request, response);
			
		} catch (Exception e) {
				e.printStackTrace();
		}
	}else if(command.equals("/boardDetail.bo")) {
		action = new BoardDetailAction();
		try {
			forward=action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else if(command.equals("/boardReplyForm.bo")) {
		action = new BoardReplyFormAction();
		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else if(command.equals("/boardReplyPro.bo")){
		action = new BoardReplyProAction();
		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else if(command.equals("/boardModifyForm.bo")) {
		action = new BoardModifyFormAction();
		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else if(command.equals("/boardModifyPro.bo")) {
		action = new BoardModifyProAction();
		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else if(command.equals("/boardDeleteForm.bo")) {
		String nowPage = request.getParameter("page");
		request.setAttribute("page", nowPage);
		int board_num=Integer.parseInt(request.getParameter("board_num"));
		request.setAttribute("board_num", board_num);
		forward = new ActionForward();
		forward.setPath("/board/qna_board/delete.jsp");
		
	}else if(command.equals("/boardDeletePro.bo")) {
		action = new BoardDeleteProAction();
		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
			
			if(forward != null) {
				if(forward.isRedirect()) {
					response.sendRedirect(forward.getPath());
				}else {
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
					dispatcher.forward(request, response);
				}
			}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
