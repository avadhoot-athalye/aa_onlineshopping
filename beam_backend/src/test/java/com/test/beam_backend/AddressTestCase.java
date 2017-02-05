package com.test.beam_backend;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.AddressDAO;
import com.beam.backend.entity.Address;

import junit.framework.Assert;

public class AddressTestCase {

	@Autowired
	AddressDAO addressDAO;
	
	@Autowired
	Address address;
	
	@Autowired
	AnnotationConfigApplicationContext context;

	public AddressTestCase() {
		super();
		context = new AnnotationConfigApplicationContext();
		context.scan("com.beam.backend");
		context.refresh();
		addressDAO = (AddressDAO) context.getBean("addressDAO");
		address = (Address) context.getBean("address");
	}
	
	
//	@Test
//	public void addAddress() {
//		address.setId(101);
//		address.setAddressLine1("A-202, NEELKANTH DHARA II");
//		address.setAddressLine2("NEAR GANGESHWAR TOWER, RAJU NAGAR");
//		address.setLandMark("NEAR INFANT JESUS CHURCH");
//		address.setCity("DOMBIVLI WEST");
//		address.setState("MAHARASHTRA");
//		address.setCountry("INDIA");
//		address.setPincode("421202");
//		address.setUserId(193);
//		
//		
//		Assert.assertEquals(true, addressDAO.addAddress(address));
//		
//		
//	}
	
//	@Test
//	public void deleteAddress() {
//		address = addressDAO.getAddress(101);
//		Assert.assertEquals(true, addressDAO.deleteAddress(address));
//	}
	
	@Test
	public void updateAddress() {
		address = addressDAO.getAddress(101);
		address.setCity("Kalyan");
		
		Assert.assertEquals(true, addressDAO.updateAddress(address));
	}
}
