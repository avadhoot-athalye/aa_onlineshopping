package com.beam.webapp.authentication;

import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Override
	public boolean isValid(String username, String password) {
		
		if(username.equals("admin") && password.equals("2311")) {
			return true;
		}
		return false;
	}

}
