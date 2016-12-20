package com.beam.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value={"/","/home","/index","/default","/store"})
	
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("ifUserClickedHome", true);
		return mv;
	}
	
	@RequestMapping(value="/about")
	
	public ModelAndView about() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About us");
		mv.addObject("ifUserClickedAbout", true);
		return mv;
	}

	@RequestMapping(value="/contact")
	
	public ModelAndView contact() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact us");
		mv.addObject("ifUserClickedContact", true);
		return mv;
	}
	
	@RequestMapping(value="/support")
	
	public ModelAndView support() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Support");
		mv.addObject("ifUserClickedSupport", true);
		return mv;
	}
	
	@RequestMapping(value="/wallpapers")
	
	public ModelAndView wallpapers() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "wallpapers");
		mv.addObject("ifUserClickedWallpapers", true);
		return mv;
	}

	@RequestMapping(value="/cart")
	
	public ModelAndView cart() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}
	
	@RequestMapping(value="/login")
	
	public ModelAndView login() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "log in");
		mv.addObject("ifUserClickedLogIn", true);
		return mv;
	}
	
	@RequestMapping(value="/signup")
	
	public ModelAndView signup() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign up");
		mv.addObject("ifUserClickedSignUp", true);
		return mv;
	}
	
	/*
	 * For loading the product pages 
	 */
	
	@RequestMapping(value="/games/all")
	
	public ModelAndView gamecatalogue() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Catalogue");
		mv.addObject("ifUserClickedGameCatalogue", true);
		return mv;
	}
	
	@RequestMapping(value="/game/{id}")
	
	public ModelAndView game(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		/*
		 * Code to feth the single product  using id
		 * from the database
		 */
		
		
		mv.addObject("title", "");
		mv.addObject("id", id);
		mv.addObject("", true);
		return mv;
	}

}
