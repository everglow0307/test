package com.jomelon.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jomelon.service.UserService;
import com.jomelon.service.impl.UserServiceImpl;


@WebServlet("/myinfoUpt.do")
public class MyInfoUptController extends HttpServlet {
	private UserService userService = new UserServiceImpl();
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("contentPage","/view/myinfo/myInfoUptSuccess.jsp");
		request.getRequestDispatcher("/view/template/main.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원정보수정
		int result = userService.userUpt(request);
		
		//회원 정보  수정 성공
		if(result>0) {
			response.sendRedirect("myinfoUpt.do");
		}else {
			PrintWriter out = response.getWriter();
			out.println("회원정보 수정 실페");
		}
	}

}
