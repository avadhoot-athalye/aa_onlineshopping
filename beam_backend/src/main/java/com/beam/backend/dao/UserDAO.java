package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.User;

public interface UserDAO {

	List<User> list();
	User getUser (int id);
	User getbyUserName(String username);
	boolean addUser(User user);
	boolean deleteUser(User user);
	boolean updateUser(User user);
	boolean isValid(String username, String password);
}
