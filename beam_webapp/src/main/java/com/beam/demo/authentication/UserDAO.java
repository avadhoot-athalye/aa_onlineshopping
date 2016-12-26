package com.beam.demo.authentication;

public interface UserDAO {

	boolean isValid(String username,String password);
}
