package com.beam.webapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.SupplierDAO;
import com.beam.backend.entity.Category;
import com.beam.backend.entity.Product;
import com.beam.backend.entity.ProductListModel;
import com.beam.backend.entity.Supplier;

@Controller
@RequestMapping(value = { "/admin" })
public class AdminController {

	/*
	 * category modifaction
	 */
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	Category category;

	/*
	 * To view list of all categories
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
		return "redirect:/admin/allcategories";
	}

	/*
	 * For product modification
	 */

	@Autowired
	ProductDAO productDAO;

	@Autowired
	Product product;

	@Autowired
	private HttpServletRequest request;

	boolean flag = false;

	/*
	 * To add products
	 */

	@RequestMapping(value = "/addproduct")

	public ModelAndView addproduct(@RequestParam(value = "op", required = false) String operation,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "id", required = false) String id) {
		ModelAndView mv = new ModelAndView("page");

		if (operation != null) {
			if ((operation.equals("update")) && status.equals("success")) {
				mv.addObject("msg", "Success! Product Updated Successfully");
			} else if ((operation.equals("update")) && status.equals("fail")) {
				mv.addObject("msg", "Failed To Update Product");
			} else if ((operation.equals("add")) && status.equals("success")) {
				mv.addObject("msg", "Success! Product added Successfully");
			} else if ((operation.equals("add")) && status.equals("fail")) {
				mv.addObject("msg", "Failed To add the Product");
			} else if ((operation.equals("delete")) && status.equals("success")) {
				mv.addObject("msg", "Success! Product deleted Successfully");
			} else if ((operation.equals("delete")) && status.equals("fail")) {
				mv.addObject("msg", "Failed To delete the Product");
			} 
		} 

		mv.addObject("title", "Add a product");
		mv.addObject("product", new Product());
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("suppliers", supplierDAO.list());
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewProduct", true);
		return mv;

	}

	@RequestMapping(value = { "/product/save" }, method = RequestMethod.POST)

	public String saveProduct(@ModelAttribute Product product, HttpServletRequest request) {

		if (product.getProduct_id() == 0) {
			flag = productDAO.addProduct(product);
			if (flag == true) {
				if (!product.getImage().getOriginalFilename().equals("")) {
					product.setImgurl(uploadImage(product));
				}
				return "redirect:/admin/addproduct?op=add&status=success";
			} else {
				return "redirect:/admin/addproduct?op=add&status=fail";
			}
		} else {
			flag = productDAO.updateProduct(product);
			if (flag == true) {
				if (!product.getImage().getOriginalFilename().equals("")) {
					product.setImgurl(uploadImage(product));
				}
				return "redirect:/admin/addproduct?op=update&status=success";
			} else {
				return "redirect:/admin/addproduct?op=update&status=fail";
			}
		}
	}

	protected String uploadImage(Product product) {
		MultipartFile imageFile = product.getImage();
		String folderToUpload = "/resources/img/products";

		String fileName = imageFile.getOriginalFilename();
		String realPath = request.getServletContext().getRealPath(folderToUpload);
		if (!new File(realPath).exists()) {
			new File(realPath).mkdirs();
		}

		String filePath = realPath + File.separator + product.getProduct_id() + ".png";
		File destination = new File(filePath);
		try {
			imageFile.transferTo(destination);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return fileName;

	}
	/*
	 * To view list of all products
	 */

	@RequestMapping(value = "/allproducts")

	public ModelAndView allproducts() {
		List<Product> products = productDAO.list();
		List<ProductListModel> productlist = new ArrayList<>();

		ProductListModel productModel = null;

		for (Product p : products) {
			productModel = new ProductListModel();
			productModel.setProduct(p);
			productModel.setCategoryName(categoryDAO.getCategory(p.getCategory_id()).getCategory_name());
			productModel.setSupplierName(supplierDAO.getSupplier(p.getSupplierId()).getName());
			productlist.add(productModel);

		}
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "View all products");
		mv.addObject("products", productlist);
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllProducts", true);
		return mv;
	}

	/*
	 * To update products
	 */
	@RequestMapping(value = "/editproduct/{product.product_id}")

	public ModelAndView editProducts(@PathVariable("product.product_id") int productId) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Edit product");
		mv.addObject("product", productDAO.get(productId));
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("suppliers", supplierDAO.list());
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewProduct", true);
		return mv;
	}

	/*
	 * To delete product
	 */
	@RequestMapping(value = { "/deleteproduct/{product.product_id}" }, method = RequestMethod.GET)

	public String deleteProduct(@PathVariable(name = "product.product_id") int productId) {

		product = productDAO.get(productId);

		productDAO.deleteProduct(product);
		return "redirect:/admin/allproducts";
	}

	/*
	 * For supplier modification
	 */

	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	Supplier supplier;

	/*
	 * To add suppliers
	 */

	@RequestMapping(value = "/addsupplier")

	public ModelAndView addsupplier() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Add a supplier");
		mv.addObject("supplier", new Supplier());
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewSupplier", true);
		return mv;
	}

	@RequestMapping(value = { "/supplier/save" }, method = RequestMethod.POST)

	public String saveSupplier(@ModelAttribute Supplier supplier) {

		if (supplier.getId() == 0) {
			supplierDAO.addSupplier(supplier);
		} else {
			supplierDAO.updateSupplier(supplier);
		}
		return "redirect:/admin/addsupplier";
	}

	/*
	 * To view all suppliers
	 */

	@RequestMapping(value = "/allsuppliers")

	public ModelAndView allsuppliers() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("suppliers", supplierDAO.list());
		mv.addObject("title", "View all suppliers");
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedViewAllSuppliers", true);
		return mv;
	}

	/*
	 * To update suppliers
	 */

	@RequestMapping(value = "/editsupplier/{supplier.id}")

	public ModelAndView editSupplier(@PathVariable("supplier.id") int supplierid) {

		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Edit supplier");
		mv.addObject("supplier", supplierDAO.getSupplier(supplierid));
		mv.addObject("ifAdminClickedSettings", true);
		mv.addObject("ifAdminClickedAddNewSupplier", true);
		return mv;
	}

	/*
	 * To delete suppliers
	 */

	@RequestMapping(value = { "/deletesupplier/{supplier.id}" }, method = RequestMethod.GET)

	public String deleteSupplier(@PathVariable(name = "supplier.id") int supplierid) {

		supplier = supplierDAO.getSupplier(supplierid);

		supplierDAO.deleteSupplier(supplier);
		return "redirect:/admin/allsuppliers";
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
