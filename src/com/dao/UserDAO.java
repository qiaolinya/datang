package com.dao;

import com.entity.*;

public interface UserDAO {
	public Employee login(String username,String password,String role);
}
