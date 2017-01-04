package com.beam.backend.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.User;

@Repository ("UserDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User deleteUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User addUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}


}
