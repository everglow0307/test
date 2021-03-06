package com.jomelon.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.jomelon.common.dbutil.JDBCTemplate;
import com.jomelon.dao.NoticeDAO;
import com.jomelon.domain.NoticeVO;




public class NoticeService {
	//>>private로 변경예정
	public NoticeDAO ndao = new NoticeDAO();
	
	// ---------------------------------------------------------------------getNoticeList

	// 구현!!
	public List<NoticeVO> getNoticeList(HttpServletRequest request) {
		//list.jsp에서 list?f=title&q=a 로 전달
		
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		String page_ = request.getParameter("p");
		
		String field = "title"; // 기본값 (null값 빈문자열- 전달 안됐을경우)
		if(field_ != null && !field_.equals("")) {
			field = field_;
		}
		
		String query = "";// 기본값
		if(query_ != null && !query_.equals("")) {
			query = query_;
		}
		
		int page = 1;// 기본값
		if(page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_);
		}
		
		NoticeService service = new NoticeService();
		
		
		return ndao.getNoticeList(field, query, page);
	}

	// ---------------------------------------------------------------------getNoticeCount

	// 구현!!
	public int getNoticeCount(HttpServletRequest request) {
		
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		
		String field = "title"; // 기본값 (null값 빈문자열- 전달 안됐을경우)
		if(field_ != null && !field_.equals("")) {
			field = field_;
		}
		
		String query = "";// 기본값
		if(query_ != null && !query_.equals("")) {
			query = query_;
		}
		
				
		return ndao.getNoticeCount(field, query);
	}

	// ----------------------------------------------------------------------getNoticeCount
	public NoticeVO getNotice(int id) {
		
		return ndao.getNotice(id);
	}

	public NoticeVO getNextNotice(int id) {
		
		return ndao.getNextNotice(id);
	}

	public NoticeVO getPrevNotice(int id) {

		return ndao.getPrevNotice(id);
	}
	
	
	// ------------------------------------------------admin(관리자페이지)

	public int removeNoticeAll(int[] ids) {

		return 0;
	}

	public int pubNoticeAll(int[] ids) {

		return 0;
	}

	//공지사항 글쓰기
	public int insertNotice(HttpServletRequest request) {
		
		String title = request.getParameter("title") ;
		String content = request.getParameter("content");
		String isOpen = request.getParameter("open");
		// open-> check가 되면 true check가 안되면 null값 
		boolean pub = false;
		if(isOpen != null){
			pub=true;
		}

		NoticeVO notice = new NoticeVO();
		notice.setTitle(title);
		notice.setContent(content);
		notice.setPub(pub);
		
		// 인증권한 나중에 처리해줘야함 일단..
		notice.setWriterId("jomelon");

		return ndao.insertNotice(notice);
	}

	
	public int deleteNotice(int id) {

		return 0;
	}

	public int updateNotice(NoticeVO notice) {

		return 0;
	}

	List<NoticeVO> getNoticeNewestList() {

		return null;
	}

	// 일괄삭제  
	public int deleteNoticeAll(HttpServletRequest request) {
		int result = 0;
		
		//checkbox에 체크한 값의 id전달받음
				String[] openIds = request.getParameterValues("open-id");
				String[] delIds = request.getParameterValues("del-id");
				
				String cmd = request.getParameter("cmd");
				
				switch(cmd) {
				case "일괄공개":
					for(String openId : openIds) {
						System.out.printf("open id : %s\n", openId );
					}
					break;
				case "일괄삭제":
						
					// string-> int
					int[] ids = new int [delIds.length];
					for(int i=0; i<delIds.length; i++) {
						ids[i] = Integer.parseInt(delIds[i]);
					}		
				
					result =  ndao.deleteNoticeAll(ids);
					break;
				}
		
		
		return result;
		
	}
}