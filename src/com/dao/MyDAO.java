package com.dao;

import java.util.List;


import com.entity.*;

public interface MyDAO {
	//增
	void add(Employee user);
	//删
	void delete(int id);
	
	void deleteByArray(int[] ids);
	//改
	void update(int id,Employee user);
	List<Employee> query();
	List<Employee> queryByID(int id);
	Employee getObject(String username);
	public Employee login(String username,String password,String role);
	public List<Employee> getList();
	
	
	
}
