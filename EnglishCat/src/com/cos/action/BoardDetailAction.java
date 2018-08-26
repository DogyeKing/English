package com.cos.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.dto.ActionForward;

public class BoardDetailAction implements Action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

	int board_num = Integer.parseInt(request.getParameter("board_num"));
	String page = request.getParameter("page");

	
	return null;
}
}
