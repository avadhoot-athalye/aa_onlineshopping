package com.beam.webapp.controller;

import java.security.Principal;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.User;

@Controller
public class PageController {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	Cart cart;

	@Autowired
	User user;

	@Autowired
	UserDAO userDAO;

	@Autowired
	CartItemDAO cartItemDAO;

	@Autowired
	HttpSession httpSession;

	@RequestMapping(value = { "/", "/home", "/index", "/default", "/store" })

	public ModelAndView index(@RequestParam(value = "login", required = false) String msg, Principal principal) {

		ModelAndView mv = new ModelAndView("page");

		if (msg != null) {
			mv.addObject("msg", msg);
		}
		if (principal != null) {
			user = userDAO.getbyUserName(principal.getName());
			if (user.getCart() != null) {
				List<CartItems> cartItems = cartItemDAO.list(user.getCart().getId());
				if (cartItems != null) {
					httpSession.setAttribute("noOfCartItems", cartItems.size());
				}
			}
		}
		mv.addObject("title", "Welcome to Beam");
		mv.addObject("ifUserClickedHome", true);
		return mv;
	}

	@RequestMapping(value = "/about")

	public ModelAndView about() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About us");
		mv.addObject("ifUserClickedAbout", true);
		return mv;
	}

	@RequestMapping(value = "/contact")

	public ModelAndView contact() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact us");
		mv.addObject("ifUserClickedContact", true);
		return mv;
	}

	@RequestMapping(value = "/support")

	public ModelAndView support() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Support");
		mv.addObject("ifUserClickedSupport", true);
		return mv;
	}

	@RequestMapping(value = "/wallpapers")

	public ModelAndView wallpapers() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "wallpapers");
		mv.addObject("ifUserClickedWallpapers", true);
		return mv;
	}

	@RequestMapping(value = "/login")

	public ModelAndView login(@RequestParam(value = "login", required = false) String msg) {

		ModelAndView mv = new ModelAndView("page");

		if (msg != null) {
			mv.addObject("msg", msg);
		}
		mv.addObject("title", "log in");
		mv.addObject("ifUserClickedLogIn", true);
		return mv;
	}

	/*
	 * For loading the product pages
	 */

	@RequestMapping(value = "/games/all")

	public ModelAndView gamecatalogue() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All games");
		mv.addObject("ifUserClickedGameCatalogue", true);
		return mv;
	}

	@RequestMapping(value = "/game/{id}")

	public ModelAndView game(@PathVariable(name = "id", required = false) int id) {
		ModelAndView mv = new ModelAndView("page");
		/*
		 * Code to feth the single product using id from the database
		 */
		mv.addObject("product", productDAO.get(id));
		// mv.addObject(attributeName, attributeValue)
		mv.addObject("title", "gamepage");
		// mv.addObject("id", id);
		mv.addObject("ifUserClickedGame", true);
		return mv;
	}

	@RequestMapping(value = "/authority")

	public ModelAndView authority() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "authority");
		mv.addObject("ifAdminClickedSettings", true);
		return mv;
	}

	@RequestMapping(value = "/confirmaddress")

	public ModelAndView confirmaddress() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "View all suppliers");
		mv.addObject("ifUserClickedCheckout", true);
		return mv;
	}

	@RequestMapping(value = "/ordersummary")

	public ModelAndView ordersummary() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Order Confirmation");
		mv.addObject("ifUserClickedUpdate", true);
		return mv;
	}

}
