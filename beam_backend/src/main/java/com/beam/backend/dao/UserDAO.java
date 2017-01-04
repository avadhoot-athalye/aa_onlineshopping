package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.User;

public interface UserDAO {

	List<User> list();
	User get (int id);
	User addUser(User user);
	User deleteUser(User user);
	User updateUser(User user);
}
