package com.beam.webapp.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.Category;
import com.beam.backend.entity.User;

@Controller
@RequestMapping(value = { "/user" })
public class UserController {
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Cart cart;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	CartItems cartItems;

	@Autowired
	CartItemDAO cartItemDAO;
	
	
	@RequestMapping(value = "/signup")

	public ModelAndView addUser() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign up");
		mv.addObject("user", new User());
		mv.addObject("ifUserClickedSignUp", true);
		//System.out.println("Testing");
		return mv;
	}
	
	@RequestMapping(value = { "/save" }, method = RequestMethod.POST)

	public String saveUser(@ModelAttribute User user) {
		//System.out.println("Hello");
		if (user.getId() == 0) {
			//System.out.println("hello1");
			userDAO.addUser(user);
		} else {
			//System.out.println("hello2");
			userDAO.updateUser(user);
		}
		return "redirect:/login";
	}

}
