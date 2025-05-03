package com.skilldistillery.msfg.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.msfg.data.StaffDAO;
import com.skilldistillery.msfg.entities.Staff;

@Controller
public class StaffController {

	@Autowired
	private StaffDAO staffDao; 
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("staff", staffDao.findAll()); 
		return "home"; 
	}
	
	@RequestMapping(path = "staff.do", method = RequestMethod.GET)
	public String lookupStaff(Model model, @RequestParam("staffId") int staffId) {
		Staff staff = staffDao.staffId(staffId);
		if (staff != null) {
			model.addAttribute("staff", staff);
			model.addAttribute("message", "Staff found: " + staff.getFirstName());
			return "staff/staff";
		} else {
			model.addAttribute("message", "No staff found with ID: " + staffId);
			return "staff/staff";
		}
	}
	
	public String staffList(Model model) {
	List<Staff> staff = staffDao.findAll(); 
	 model.addAttribute("staff", staff);
	 model.addAttribute("message", staff.isEmpty() 
	      ? "No films found." 
	      : "Found " + staff.size() + " films.");
	  
	  return "home";
	}
	
	public String filmSort(Model model,  @RequestParam("sort") String sort){
		List<Staff> staff = staffDao.sortByName(sort);
		model.addAttribute("films", staff);
		
	 return "home"; 
	}
	

}
