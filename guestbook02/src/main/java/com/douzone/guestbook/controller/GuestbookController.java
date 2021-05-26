package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// post 방식으로 전달받는 파라미터 값의 인코딩 처리
		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("a");
		if ("deleteform".equals(action)) {
			// view로 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		} else if ("add".equals(action)) { // 등록
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			String regDate = request.getParameter("message");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			vo.setRegDate("1999-01-01");
			
			new GuestbookDao().insert(vo);
			// redirect 응답
			response.sendRedirect(request.getContextPath() + "/gb");
		} else if ("delete".equals(action)) { // 삭제
			request.setCharacterEncoding("utf-8");
			String no2 = request.getParameter("no");
			Long no = Long.parseLong(no2);
			String pw = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(no);
			vo.setPassword(pw);
			
			GuestbookVo vo2 = new GuestbookDao().findAll2(no);
			String pw2 = vo2.getPassword();
			
			if(pw.equals(pw2)){
				new GuestbookDao().delete(vo);
				// redirect 응답
				response.sendRedirect(request.getContextPath() + "/gb");	
			} else {
				// 경고창
				response.sendRedirect(request.getContextPath() + "/gb");
			}
		} else {
			/* default request(action) */

			// 1. 요청처리
			List<GuestbookVo> list = new GuestbookDao().findAll();

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
