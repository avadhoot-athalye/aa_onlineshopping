package com.beam.webapp.authentication;

public interface UserDAO {

	boolean isValid(String username,String password);
}
