package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.Supplier;

public interface SupplierDAO {

	List<Supplier> list();
	Supplier getSupplier(int id);
	boolean addSupplier(Supplier supplier);
	boolean updateSupplier(Supplier supplier);
	boolean deleteSupplier(Supplier supplier);
}
