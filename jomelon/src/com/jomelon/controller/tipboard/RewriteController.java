package com.jomelon.controller.tipboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jomelon.domain.ReviewBoardVO;
import com.jomelon.service.ReviewService;
import com.jomelon.service.impl.ReviewServiceImpl;

@WebServlet("/TipBoardList.do")
public class RewriteController extends HttpServlet{

	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			request.setAttribute("contentPage", "/BoardList.jsp");
			request.getRequestDispatcher("/view/template/main.jsp").forward(request, response);;
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
	