package com.test.beam_backend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.Accessible;
import com.beam.backend.entity.Product;

public class ProductTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.beam.backend");
		context.refresh();
		
		//get the ProductDAO
		Accessible productDAO = (Accessible) context.getBean("productDAO");
		
		Product p = new Product();
		
		//set the field value
		p.setName("abc");
		
		
		productDAO.add(p);

		
	}

}
