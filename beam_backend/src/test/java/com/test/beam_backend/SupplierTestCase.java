package com.test.beam_backend;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.SupplierDAO;
import com.beam.backend.entity.Supplier;

import junit.framework.Assert;

public class SupplierTestCase {

	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	AnnotationConfigApplicationContext context;

	public SupplierTestCase() {
		super();
		context = new AnnotationConfigApplicationContext();
		context.scan("com.beam.backend");
		context.refresh();
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		supplier = (Supplier) context.getBean("supplier");
	}
	
	/*
	 * Test case to add a supplier
	 */
//	@Test
//	public void addSupplierTest() {
//		supplier.setId(102);
//		supplier.setName("Game.Inc");
//		supplier.setPhoneNumber("99999");
//		Assert.assertEquals(true, supplierDAO.addSupplier(supplier));
//	}
	
	/*
	 * Test case to delete supplier
	 */
	
	@Test
	public void deleteSupplierTest() {
		supplier = supplierDAO.getSupplier(101);
		Assert.assertEquals(true, supplierDAO.deleteSupplier(supplier));
	}
	
	/*
	 * Test case to update supplier
	 */
	
//	@Test
//	public void updateSupplierTest() {
//		supplier = supplierDAO.getSupplier(101);
//		supplier.setName("Game pvt ltd");
//		Assert.assertEquals(true, supplierDAO.updateSupplier(supplier));
//	}
	
	/*
	 * Test case to fetch the suppliers
	 */
	
//	@Test
//	public void getAllSupplierTest() {
//		int size = supplierDAO.list().size();
//		Assert.assertEquals(4, size);
//	}
//	
}
