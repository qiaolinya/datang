package com.util;

import java.io.FileInputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtil {

	private static String url;
	private static String user;
	private static String password;
	private static ThreadLocal<Connection> threadLocal;
	static {
		Properties prop = new Properties();
		threadLocal = new ThreadLocal<>();
		try {
			
			//prop.load(new FileInputStream(System.getProperty("user.dir")+"/src/db.properties"));
			
			url = "jdbc:mysql://localhost:3306/datang?useUnicode=true&characterEncoding=utf8";
			user = "root";
			password = "12345678";
			
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	/**
	 * 鑾峰彇杩炴帴
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = threadLocal.get();
			if (null != conn) {
				return conn;
			}
			conn = DriverManager.getConnection(url, user, password);
			threadLocal.set(conn);
		} catch (Exception e) {
			System.out.println("连接异常");
			System.out.println(e);
		}
		return conn;
	}

	/**
	 * 閲婃斁璧勬簮
	 * 
	 * @throws SQLException
	 */
	public static void close() {
		try {
			Connection conn = threadLocal.get();
			if (null != conn && !conn.isClosed()) {
				conn.close();
				threadLocal.remove();
			}
		} catch (Exception e) {
			System.out.println("关闭异常");
		}

	}

	public static void main(String[] args) {
		Connection conn = JDBCUtil.getConnection();
		System.out.println(conn);
	}
}