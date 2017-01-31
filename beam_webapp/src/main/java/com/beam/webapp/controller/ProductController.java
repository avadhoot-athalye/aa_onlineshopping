package com.beam.webapp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.entity.Product;


/*
 * This controller is used only for fetching the data and not dor displaying any view
 */
	@Controller
	@RequestMapping(value = "/data/product")
	public class ProductController {

	// /*
	// * Product data can be fetch using Accessible implement class so we will
	// * autowire it here
	// */

	@Autowired
	private ProductDAO accessible;

	@RequestMapping(value = "/list")
	public @ResponseBody List<Product> productList() { // need to receive response
		return accessible.list();
	}

	
}
