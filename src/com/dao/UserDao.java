package com.dao;

import com.test.User;

public class UserDao {
	
	public boolean UserDao(User user) {
		
		if(user.getUsername().equals("admin")&&user.getPass().equals("hello")) {
			return true;
		}else {
			return false;
		}
		
	}
}
