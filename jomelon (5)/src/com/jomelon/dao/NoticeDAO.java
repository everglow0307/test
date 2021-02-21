package com.jomelon.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.jomelon.common.dbutil.JDBCTemplate;
import com.jomelon.domain.NoticeVO;
import com.jomelon.util.SecurityUtil;

public class NoticeDAO {
	
	// List
	public List<NoticeVO> getNoticeList(String field/*TITLE, WRITER_ID*/, String query/*A*/, int page) {

		List<NoticeVO> list = new ArrayList<>();
		
		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		
		try {
			String sql= "SELECT * FROM ( "
					+ " SELECT ROWNUM NUM, N.* "
					+ " FROM (SELECT * FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N " 
					+ " ) "
					+ " WHERE NUM BETWEEN ? AND ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%"+query+"%" );
			pstmt.setInt(2, 1+(page-1)*10);
			pstmt.setInt(3,  page*10);
		
			rset = pstmt.executeQuery();
			
			while (rset.next()) {
				int id = rset.getInt("ID");
				String title = rset.getString("TITLE");
				String writerId = rset.getString("WRITER_ID");
				Date regdate = rset.getDate("REGDATE");
				int hit = rset.getInt("HIT");
				String files = rset.getString("FILES");
				String content =rset.getString("CONTENT");
				boolean pub = rset.getBoolean("PUB");

				NoticeVO notice = new NoticeVO(id, title, writerId, regdate, hit, files, content, pub);

				list.add(notice);
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return list;
	}
	
	
	public int getNoticeCount(String field, String query) {
		
		int count =0;
		
		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		// 집계하는 값을 원함 count
		try {
			String sql= "SELECT COUNT(ID) COUNT FROM ( "
					+ " SELECT ROWNUM NUM, N.* "
					+ " FROM (SELECT * FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N " 
					+ " ) ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%"+query+"%" );
						
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");				
			}
			
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return count;
	}
	
	
	//Detail
	// ----------------------------------------------------------------------getNoticeCount
	public NoticeVO getNotice(int id) {
		
		NoticeVO notice = null;
		
		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;


		try {
			String sql= "SELECT * FROM NOTICE WHERE ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, id);
						
			rset = pstmt.executeQuery();
			if (rset.next()) {
				int nid = rset.getInt("ID");
				String title = rset.getString("TITLE");
				String writerId = rset.getString("WRITER_ID");
				Date regdate = rset.getDate("REGDATE");
				int hit = rset.getInt("HIT");
				String files = rset.getString("FILES");
				String content = rset.getString("CONTENT");
				boolean pub = rset.getBoolean("PUB");

				notice = new NoticeVO(nid, title, writerId, regdate, hit, files, content, pub);
			}
			
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return notice;

		}
	
	
	
	public NoticeVO getNextNotice(int id) {
	
		NoticeVO notice = null;
		
		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		try {
			String sql= "SELECT * FROM NOTICE WHERE ID = (SELECT ID FROM NOTICE WHERE REGDATE > (SELECT REGDATE FROM NOTICE WHERE ID = ?) AND ROWNUM = 1)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, id);
						
			rset = pstmt.executeQuery();
			if (rset.next()) {
				int nid = rset.getInt("ID");
				String title = rset.getString("TITLE");
				String writerId = rset.getString("WRITER_ID");
				Date regdate = rset.getDate("REGDATE");
				int hit = rset.getInt("HIT");
				String files = rset.getString("FILES");
				String content = rset.getString("CONTENT");
				boolean pub = rset.getBoolean("PUB");

				notice = new NoticeVO(nid, title, writerId, regdate, hit, files, content, pub);
			}
			
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return notice;
	}
	
	public NoticeVO  getPrevNotice(int id) {
		
		NoticeVO notice = null;
		
		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		try {
			String sql= "SELECT * FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC) WHERE REGDATE < (SELECT REGDATE FROM NOTICE WHERE ID = ?) AND ROWNUM = 1";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, id);
						
			rset = pstmt.executeQuery();
			if (rset.next()) {
				int nid = rset.getInt("ID");
				String title = rset.getString("TITLE");
				String writerId = rset.getString("WRITER_ID");
				Date regdate = rset.getDate("REGDATE");
				int hit = rset.getInt("HIT");
				String files = rset.getString("FILES");
				String content = rset.getString("CONTENT");
				boolean pub = rset.getBoolean("PUB");

				notice = new NoticeVO(nid, title, writerId, regdate, hit, files, content, pub);
			}
			
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return notice;
	}
	
	//공지사항 글쓰기
	
	public int insertNotice(NoticeVO notice) {

		int result=0;

		Connection conn= JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;

		try {
			String sql= "INSERT INTO NOTICE(TITLE, CONTENT, WRITER_ID, PUB) VALUES(?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setString(3, notice.getWriterId());
			pstmt.setBoolean(4,  notice.getPub());
						
			result = pstmt.executeUpdate();
			if(result>0) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}	
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	//일괄삭제
	
public int deleteNoticeAll(int[] ids) {
		
		int result=0;
		
		String params="";
		
		for(int i=0; i<ids.length; i++) {
			params += ids[i];
			
			if(i < ids.length-1) {
				params += ",";
			}
		}
		
		// 괄호안에 예- 1,2,3,... 쉼표로 구분해서 들어와야함 
		//?로는 넣을수 없고 쉼표를 넣은 변수(params)를 만들어 줘야함

		Connection conn= JDBCTemplate.getConnection();
		Statement st = null;

		try {
			String sql= "DELETE NOTICE WHERE ID IN ("+params+")";
			
			st = conn.createStatement();
			
			result = st.executeUpdate(sql);
			
			if(result>0) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}	
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
			JDBCTemplate.close(st);
		}
		return result;
		
	}


		
		
	

}
