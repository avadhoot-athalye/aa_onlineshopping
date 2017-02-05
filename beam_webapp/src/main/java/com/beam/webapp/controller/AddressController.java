package com.beam.webapp.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.AddressDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Address;
import com.beam.backend.entity.User;

@Controller
@RequestMapping(value = {"/user/address"})
public class AddressController {
	
	@Autowired
	AddressDAO addressDAO;
	
	@Autowired
	Address address;
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	

	/*
	 * To load update address page
	 */
	
	@RequestMapping(value = "/")

	public ModelAndView addAddress() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Update the address");
		mv.addObject("address", new Address());
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedAddress", true);
		return mv;
	}
	
	
	
	@RequestMapping(value = { "/save" }, method = RequestMethod.POST)

	public String saveAddress(@ModelAttribute Address address, Principal principal) {
		
		user = userDAO.getbyUserName(principal.getName());
		address.setUser(user);
		if(address.getId() == 0) {
			addressDAO.addAddress(address);
		} else {
			addressDAO.updateAddress(address);
		}
		return "redirect:/user/address/";
	}

	/*
	 * To edit the address
	 */
	@RequestMapping(value = "/update")

	public ModelAndView updateaddress() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Update the address");
		mv.addObject("addressUpdate", addressDAO.getAddress(user.getId()));
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedAddress", true);
		return mv;
	}


}
