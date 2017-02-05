package com.beam.backend.dao;

import com.beam.backend.entity.Address;

public interface AddressDAO {
	
	Address getAddress(int id);
	boolean addAddress(Address address);
	boolean updateAddress(Address address);
	boolean deleteAddress(Address address);

}
