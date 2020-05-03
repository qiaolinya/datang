package com.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dao.UserDAO;
import com.entity.*;
import com.util.JDBCUtil;

public class UserImplDAO implements UserDAO{
	public Employee login(String username,String password,String role)
	{
		Connection conn = JDBCUtil.getConnection();
		Employee user=null;
		Statement st;
	
		try {
		     st=conn.createStatement();
			String sql = "select * from employee where username='"+username+"' and password='"+password+"' and role='"+role+"'";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next())
			{
				user=new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}				
}
