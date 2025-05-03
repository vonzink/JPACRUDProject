package com.skilldistillery.msfg.data;

import java.util.List;

import com.skilldistillery.msfg.entities.Staff;

public interface StaffDAO {

	Staff staffId(int id); 
	
	List<Staff> findAll(); 
	
	List<Staff> sortByName(String sort); 
	
}
