package com.jomelon.common.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCTemplate {
	
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USERNAME= "SEMI";
	private static final String PASSWORD= "semi"; 
		
	private static Connection conn = null;

	private JDBCTemplate() { }

	public static Connection getConnection() {
		
		if(conn == null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		return conn; 
	}
	
	public static void commit(Connection conn) {
		
		try {
			if( conn!= null && !conn.isClosed() ) { 
				conn.commit(); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void rollback(Connection conn) {
		
		try {
			if(conn!=null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement ps) {
		try {
			if(ps != null && !ps.isClosed()) {
				ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			if(rs != null && !rs.isClosed()) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
}
