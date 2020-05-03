package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyJDBCUtil {
	  static final String DRIVER="com.mysql.jdbc.Driver";
	  static final String URL="jdbc:mysql://localhost:3306/datang";
	  static final String user="root";
	  static final String password="123456";
	  static {
		  try {
			  Class.forName(DRIVER);
		  }catch(ClassNotFoundException e){}
	  }
	  public static Connection getConn(){
		  Connection conn=null;
	  try {
		   conn = DriverManager.getConnection(URL,user,password);
		  } catch (SQLException e) { }
	  return conn;
	}
	  
}

