package com.beam.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.beam.backend.dao.UserDAO;

@Controller
public class AuthenticationController {

	@Autowired
	private UserDAO userDAO;
	
	@PostMapping (value="/login") 	
	public String loginPost(HttpServletRequest request) {
		//fetch username & password from the form
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
//		if (userDAO.isValid(username, password)) {
//			return "redirect:/index?login=success";
//		}
		return "redirect:/login?login=failure";
	}
}
