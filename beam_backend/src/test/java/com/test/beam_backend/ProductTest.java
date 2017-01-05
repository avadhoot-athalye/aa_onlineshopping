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
		product = (Product) context.getBean("productDAO");
	}
	
	@Test
	public void addProductTest()  {
		product.setProduct_id(1);
		product.setProduct_name("NFS");
		product.setProduct_price(1200);
		product.setProduct_quantity(50);
		product.setProduct_description("This is a game");
		
		Assert.assertEquals(true, productDAO.addProduct(product));
	}
	
}
