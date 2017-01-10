package com.test.beam_backend;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.ProductDAO;
import com.beam.backend.entity.Product;

import junit.framework.Assert;

public class ProductTest {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	AnnotationConfigApplicationContext context;

	public ProductTest() {
		super();
		context = new AnnotationConfigApplicationContext();
		context.scan("com.beam.backend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
		product = (Product) context.getBean("product");
	}
	
	
	
	/*
	 * Test case to add a product
	 */
	
	
	@Test
	public void addProductTest()  {
		product.setProduct_id(1);
		product.setProduct_name("NFS");
		product.setProduct_price(1200);
		product.setProduct_quantity(50);
		product.setProduct_description("This is a game");
		product.setCategory_id(1);
		
		Assert.assertEquals(true, productDAO.addProduct(product));
	}
	
	
	
	/*
	 * Test case to delete product
	 */
	
	
//	@Test
//	public void deleteProductTest(){
//		product = productDAO.get(1);
//		Assert.assertEquals(true, productDAO.deleteProduct(product));
//	}
	
	
	
	/*
	 * Test case to update product
	 */
	
	
	
//	@Test
//	public void updateProductTest() {
//		product = productDAO.get(1);
//		product.setProduct_name("Fallout 4");
//		Assert.assertEquals(true, productDAO.updateProduct(product));
//	}
	
	
	
	/*
	 * Test case to get all products
	 */
	
	
	
//	@Test
//	public void getAllProductsTest() {
//		int size = productDAO.list().size();
//		Assert.assertEquals(1, size);
//	}
	
	
	/*
	 * Test case to get product by category
	 */
	
//	@Test
//	public void getByCategoryTest() {
//		product = productDAO.getByCategory(1);
//		Assert.assertEquals(true, productDAO.getByCategory(1));
//	}
}
