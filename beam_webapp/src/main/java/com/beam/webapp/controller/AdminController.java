package com.beam.webapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.entity.Category;
import com.beam.backend.entity.Product;
import com.test.beam_backend.CategoryTestCase;

@Controller
@RequestMapping(value={"/admin"})
public class AdminController {

	/*
	 * Methods for categories
	 */
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	/*
	 * To view list of all categpries
	 */

	@RequestMapping(value = "/allcategories")

	public ModelAndView allcategories() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("title", "View all categories");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllCategories", true);
		return mv;
	}
	
	/*
	 * To add categories
	 */
	@RequestMapping(value = "/addcategory")

	public ModelAndView addcategory() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a category");
		mv.addObject("pageTitle", "Add a category");
		mv.addObject("buttonSet", "Create");
		mv.addObject("category", new Category());
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewCategory", true);
		return mv;
	}
	
	/*
	 * To edit categories
	 */
	
	@RequestMapping(value = "/editcategory/{category_id}")

	public ModelAndView editcategory(@PathVariable("category_id") int categoryid) {
		
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Edit category");
		mv.addObject("pageTitle", "Edit Category");
		mv.addObject("buttonSet", "Update");
		mv.addObject("category", categoryDAO.getCategory(categoryid));
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewCategory", true);
		return mv;
	}
	
	/*
	 * To update categories
	 */
	
	@RequestMapping(value = { "/category/save" }, method = RequestMethod.POST)

	public String saveCategory(@ModelAttribute Category category) {

		if (category.getCategory_id() == 0) {
			categoryDAO.addCategory(category);
		} else {
			categoryDAO.updateCategory(category);
		}
		return "redirect:/admin/addcategory";
	}
	
	/*
	 * To delete categories
	 */
	@RequestMapping(value = { "/deletecategory/{id}" }, method = RequestMethod.GET)

	public String deleteCategory(@PathVariable(name = "id") int id) {
		
		category = categoryDAO.getCategory(id);
		
		categoryDAO.deleteCategory(category);
		return "redirect:/allcategories";
	}
	
	
	
	/*
	 * Methods for products
	 */
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@RequestMapping(value = "/addproduct")

	public ModelAndView addproduct() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a product");
		mv.addObject("product", new Product());
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewProduct", true);
		return mv;
	}
	
	@RequestMapping(value = {"/product/save"}, method = RequestMethod.POST)

	public String saveProduct(@ModelAttribute Product product) {
		
		if(product.getCategory_id() == 0) {
			productDAO.addProduct(product);
		} else {
			productDAO.updateProduct(product);
		}
		return "redirect:/admin/addproduct";
		
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
	
	
}
