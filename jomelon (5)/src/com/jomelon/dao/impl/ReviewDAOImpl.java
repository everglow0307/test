package com.jomelon.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jomelon.common.dbutil.JDBCTemplate;
import com.jomelon.dao.ReviewDAO;

public class ReviewDAOImpl implements ReviewDAO{

	Connection conn = JDBCTemplate.getConnection();
	PreparedStatement pstmt;
	
}
