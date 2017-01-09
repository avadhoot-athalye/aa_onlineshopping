package com.beam.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index", "/default", "/store" })

	public ModelAndView index(@RequestParam(value = "login", required = false) String msg) {

		ModelAndView mv = new ModelAndView("page");

		if (msg != null) {
			mv.addObject("msg", msg);
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

	@RequestMapping(value = "/cart")

	public ModelAndView cart() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "cart");
		mv.addObject("ifUserClickedCart", true);
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

	@RequestMapping(value = "/signup")

	public ModelAndView signup() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign up");
		mv.addObject("ifUserClickedSignUp", true);
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

	@RequestMapping(value = "/game")

	public ModelAndView game() {
		ModelAndView mv = new ModelAndView("page");
		/*
		 * Code to feth the single product using id from the database
		 */

		mv.addObject("title", "gamepage");
		// mv.addObject("id", id);
		mv.addObject("ifUserClickedGame", true);
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
	
	@RequestMapping(value = "/updateaddress")

	public ModelAndView updateaddress() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Update the address");
		mv.addObject("ifUserClickedSettings", true);
		mv.addObject("ifUserClickedAddress", true);
		return mv;
	}

	@RequestMapping(value = "/authority")

	public ModelAndView authority() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "authority");
		mv.addObject("ifAdminClickedSettings", true);
		return mv;
	}

	@RequestMapping(value = "/addproduct")

	public ModelAndView addproduct() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a product");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewProduct", true);
		return mv;
	}

	@RequestMapping(value = "/addcategory")

	public ModelAndView addcategory() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a category");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewCategory", true);
		return mv;
	}

	@RequestMapping(value = "/addsupplier")

	public ModelAndView addsupplier() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a supplier");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewSupplier", true);
		return mv;
	}

	@RequestMapping(value = "/addwallpaper")

	public ModelAndView addwallpaper() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a wallpaper");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewWallpaper", true);
		return mv;
	}

	@RequestMapping(value = "/adminsettings")

	public ModelAndView adminsettings() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "setting");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedMySettings", true);
		return mv;
	}

	@RequestMapping(value = "/adminpassword")

	public ModelAndView adminpassword() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "change your password");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedChangePassword", true);
		return mv;
	}
	
	@RequestMapping(value = "/allproducts")

	public ModelAndView allproducts() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "View all products");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllProducts", true);
		return mv;
	}
	
	@RequestMapping(value = "/allcategories")

	public ModelAndView allcategories() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "View all categories");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllCategories", true);
		return mv;
	}
	
	@RequestMapping(value = "/allsuppliers")

	public ModelAndView allsuppliers() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "View all suppliers");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllSuppliers", true);
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
