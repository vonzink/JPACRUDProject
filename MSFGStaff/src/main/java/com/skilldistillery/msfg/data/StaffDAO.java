package com.skilldistillery.msfg.data;

import java.util.List;

import com.skilldistillery.msfg.entities.Staff;

public interface StaffDAO {

	List<Staff> findAll(); 
	
	List<Staff> sortByName(String sort); 
	
	List<Staff> sortByTitle(String sort); 
	
	List<Staff> sortById(String sort); 

	Staff staffId(int id); 
	
	Staff create(Staff staff);
	    
	Staff update(Staff staff);
	
	boolean delete(int id);
	    
}
