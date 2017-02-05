package com.beam.webapp.controller;

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
	
	@RequestMapping(value = "/profile")

	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "profile");
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedProfile", true);
		return mv;
	}
	
	@RequestMapping(value = "/myorders")

	public ModelAndView myorders() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "myorders");
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedmyorders", true);
		return mv;
	}

	@RequestMapping(value = "/mywishlist")

	public ModelAndView mywishlist() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "myorders");
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedmywishlist", true);
		return mv;
	}

	@RequestMapping(value = "/userpassword")

	public ModelAndView userpassword() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "change your password");
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedChangePassword", true);
		return mv;
	}

	

	@RequestMapping(value = "/settings")

	public ModelAndView settings() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "settings");
		// mv.addObject("id", id);
		mv.addObject("ifUserClickedSettings", true);
		return mv;
	}
}
