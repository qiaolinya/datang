package com.dao;

import java.lang.reflect.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import com.entity.Employee;
import com.entity.Plan;
import com.entity.Task;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.util.JDBCUtil;
import com.util.MD5Util;

public class BaseDAO {
	public static ArrayList getList(Class c1) {
		ArrayList ar = new ArrayList();
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "Select * from " + c1.getSimpleName();
		Field[] fi = c1.getDeclaredFields();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Object ob = c1.newInstance();// 实例化类对象
				for (Field ff : fi) {
					ff.setAccessible(true);
					ff.set(ob, rs.getObject(ff.getName()));
				}
				ar.add(ob);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return ar;
	}

	public static String getNameById(int id) {
		Connection conn = JDBCUtil.getConnection();
		String name=null;
		String sql = "Select name from employee where userid = " + id;
		try {
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			  while(rs.next()){    
			         name = rs.getString("name") ;    
			     }    
			  System.out.println(name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	public static Object getObById(Class c1, int id) {
		Object ob = null;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Field[] fi = c1.getDeclaredFields();
		String sql = "Select * from " + c1.getSimpleName() + " where " + fi[0].getName() + " = " + id;
		try {
			ps = conn.prepareStatement(sql);
			System.out.println(ps);
			rs = ps.executeQuery();
			while (rs.next()) {
				ob = c1.newInstance();// 实例化类对象
				for (Field ff : fi) {
					ff.setAccessible(true);
					ff.set(ob, rs.getObject(ff.getName()));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return ob;
	}

	public static ArrayList getList(Class c1, String whereSql) {
		ArrayList ar = new ArrayList();
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "Select * from " + c1.getSimpleName() + " " + whereSql;
		
		Field[] fi = c1.getDeclaredFields();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Object ob = c1.newInstance();// 实例化类对象
				for (Field ff : fi) {
					ff.setAccessible(true);
					ff.set(ob, rs.getObject(ff.getName()));
				}
				ar.add(ob);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return ar;
	}

	public static boolean Insert(Object ob) {
		boolean f = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		Class c1 = ob.getClass();
		Field[] fi = c1.getDeclaredFields();
		StringBuffer Sql = new StringBuffer();
		StringBuffer Sql1 = new StringBuffer();
		Sql.append("insert into ").append(c1.getSimpleName()).append(" (");
		for (int i = 1; i < fi.length; i++) {
			fi[i].setAccessible(true);
			Sql.append(fi[i].getName());
			Sql1.append("?");
			if (i != fi.length - 1) {
				Sql.append(",");
				Sql1.append(",");
			}
		}
		Sql.append(") ").append("values (").append(Sql1).append(");");
		try {
			System.out.println(Sql.toString());
			ps = conn.prepareStatement(Sql.toString());
			for (int i = 1; i < fi.length; i++) {
				fi[i].setAccessible(true);
				ps.setObject(i, fi[i].get(ob));
			}
			int a = ps.executeUpdate();
			if (a > 0) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return f;
	}
	
	

	public static boolean update(Object ob) {
		boolean b = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		Class c1 = ob.getClass();
		Field[] fi = c1.getDeclaredFields();
		StringBuffer sb = new StringBuffer();
		sb.append("update ").append(c1.getSimpleName()).append(" set ");
		
			sb.append(fi[4].getName());
			sb.append(" = ? ");
			
		
		sb.append(" where ");
		sb.append(fi[0].getName()).append(" =?");
		try {
			System.out.println(sb.toString());
			ps = conn.prepareStatement(sb.toString());
//			for (int i = 1; i < fi.length; i++) {
//				fi[i].setAccessible(true);
//				ps.setObject(i, fi[i].get(ob));
//			}
			fi[4].setAccessible(true);
			ps.setObject(2, fi[0].get(ob));
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(fi.length);
		}
		return b;
	}

	public static boolean delete(Class c1, Integer id) {
		boolean b = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		Field[] fi = c1.getDeclaredFields();
		String Sql = "Delete from " + c1.getSimpleName() + " Where " + fi[0].getName() + " = ?";
		System.out.println(Sql);
		try {
			ps = conn.prepareStatement(Sql);
			ps.setObject(1, id);
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return b;
		
	}

	public static boolean delete(Class c1, String WhereSql) {
		boolean b = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		Field[] fi = c1.getDeclaredFields();
		String Sql = "Delete from " + c1.getSimpleName() + " " + WhereSql;
		System.out.println(Sql);
		try {
			ps = conn.prepareStatement(Sql);
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return b;
	}

	public static boolean UpdateByUserid(String table, Integer userid,Integer boss) {
		boolean b = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		
		
		String sql = "UPDATE " + table + " set boss=" +boss  + " where userid= " + userid;
		System.out.println(sql);
		try {
			ps = conn.prepareStatement(sql);
			
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return b;
	}
	
	public int getListSize() {
		int size=0;
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select count(*) from employee";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				size=rs.getInt(1);
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return size;
	}
	
	public static boolean UpdateByUserid(String table, Integer userid,String username, String name, String md5pwd,Integer boss,String sex,
			String birthday, String job, String entrytime, String role, String education, String speciality,
			String experience) {
		boolean b = false;
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		
		
		String sql = "UPDATE " + table + " set boss=" +boss + ",username='"+username + "',name='" +name + "',md5pwd='" +md5pwd+ "',sex='" +sex + "',birthday='" +birthday + "',job='" +job + "',entrytime='" +entrytime + "',role='" +role + "',education='" +education + "',speciality='" +speciality + "',experience='" +experience+ "' where userid= " + userid;
		System.out.println(sql);
		try {
			ps = conn.prepareStatement(sql);
			
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close();
		}
		return b;
	}
	
	public int getListSize1() {
		int size=0;
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select count(*) from employee";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				size=rs.getInt(1);
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return size;
	}
	
	public List<Employee> getList(int index,int pagesize) {
		List<Employee> list=new ArrayList<>();
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select * from employee limit ?,?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new Employee(rs.getInt(1),rs.getString(4),rs.getString(6),rs.getString(9), rs.getString(8)));
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return list;
	}
	public List<Plan> getListP(int index,int pagesize,Integer taskid) {
		List<Plan> list=new ArrayList<>();
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select * from plan where taskid= "+taskid+" limit ?,?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new Plan(rs.getInt(1),rs.getString(2),rs.getString(4),rs.getString(5),rs.getString(7),rs.getString(8)));
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return list;
	}
	public List<Task> getListT(int index,int pagesize) {
		List<Task> list=new ArrayList<>();
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select * from task limit ?,?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9),rs.getInt(10)));
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return list;
	}
	public List<Task> getListT(int index,int pagesize,int taskid) {
		List<Task> list=new ArrayList<>();
		try {
			Connection conn = JDBCUtil.getConnection();
			String sql="select * from task where taskid= "+taskid+" limit ?,?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9),rs.getInt(10)));
				
			}
		} catch (Exception e) {
			System.out.println("�쳣");
		}
		return list;
	}
	
	public static void main(String[] args) {
		BaseDAO dao = new BaseDAO();
//		Integer userid=5;
//		Integer boss=1;
//		dao.UpdateByUserid("employee", userid, boss);
		
		
	}

}
