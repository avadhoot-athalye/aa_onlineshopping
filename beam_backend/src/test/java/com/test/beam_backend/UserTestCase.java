package com.test.beam_backend;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.User;

import junit.framework.Assert;

public class UserTestCase {
	
	@Autowired
	UserDAO userdao;
	
	@Autowired
	User user;
	
	@Autowired
	AnnotationConfigApplicationContext context;
	
	

	public UserTestCase() {
		super();
		// TODO Auto-generated constructor stub
		context = new AnnotationConfigApplicationContext();
		context.scan("com.beam.backend");
		context.refresh();
		userdao = (UserDAO) context.getBean("userDAO");
		user = (User) context.getBean("user");
	}

	/*
	 * Test case to delete user
	 */
//	@Test
//	public void deleteUserTestCase() {
//		
//		user = userdao.getUser(1);
//		Assert.assertEquals(true, userdao.deleteUser(user));
//	}
	
	/*
	 * Test case to get all users
	 */
	
	@Test
	public void getAllUsersTestCase() {
		
		int size = userdao.list().size();
		Assert.assertEquals	(1, size);
	}
//	
	/*
	 * test case to update all users
	 */
	
//	@Test
//	public void updateUserTestCase() {
//		user = userdao.getUser(1);
//		user.setRole("Admin");
//		Assert.assertEquals(true, userdao.updateUser(user));
//	}
	
	/*
	 * Test case to add user
	 */
//	@Test
//	public void addUserTest() {
//		user.setId(1);
//		user.setUsername("avadhoot2311");
//		user.setFirstname("Avadhoot");
//		user.setLastname("Athalye");
//		user.setMobilenumber("9999999");
//		user.setEmailid("ava@gmail.com");
//		user.setEnabled(true);
//		user.setRole("customer");
//		user.setPassword("1234");
//		user.setConfirm_password("1234");
//		
//		Assert.assertEquals(true, userdao.addUser(user));
//	}

}
