package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// post 방식으로 전달받는 파라미터 값의 인코딩 처리
		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("a");
		if ("form".equals(action)) {
			// view로 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response);
		} else if ("add".equals(action)) {
		} else {
			/* default request(action) */

			// 1. 요청처리
			List<EmaillistVo> list = new EmaillistDao().findAll();

			// 2. request범위에 데이터(객체) 저장, 여기에 list를 저장해서 jsp쪽으로 넘겨줄거임
			request.setAttribute("list", list); // (이름, 데이터)

			// 3. view로 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}