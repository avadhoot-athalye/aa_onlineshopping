package com.beam.backend.dao;

import java.security.Principal;

import com.beam.backend.entity.Address;

public interface AddressDAO {
	
	Address getAddress(int id);
	Address getByUserId(int userId);
	boolean addAddress(Address address);
	boolean updateAddress(Address address);
	boolean deleteAddress(Address address);

}
