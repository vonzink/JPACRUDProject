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
	
	//CREATE
	@RequestMapping(path = "staffform.do", method = RequestMethod.GET)
    public String showCreateForm(Model model) {
        model.addAttribute("staff", new Staff());
        return "staff/staffform";  // JSP with input fields
    }
	
	 // UPDATE FORM (pre-filled)
	@RequestMapping(path = "editstaff.do", method = RequestMethod.GET)
	public String editStaff(@RequestParam("id") int id, Model model) {
	    Staff staff = staffDao.staffId(id);
	    model.addAttribute("staff", staff);
	    return "staff/editstaff";
	}
	@RequestMapping(path = "staff/update", method = RequestMethod.POST)
	public String updateStaff(Staff staff) {
	    staffDao.update(staff);
	    return "redirect:/staff.do?staffId=" + staff.getId();
	}
    
 // PROCESS FORM SUBMISSION (create or update)
    @RequestMapping(path = "staffform.do", method = RequestMethod.POST)
    public String handleFormSubmit(Staff staff, Model model) {
        if (staff.getId() == 0) {
            staffDao.create(staff); // New staff
        } else {
            staffDao.update(staff); // Existing staff
        }
        model.addAttribute("staff", staff);
        return "redirect:/staff.do?staffId=" + staff.getId();// Redirect to detail page
    }
    
    
	//READ
	@RequestMapping(path= {"/", "home.do"})
	public String index(@RequestParam(value = "showStaff", required = false) Boolean showStaff, Model model) {
	    List<Staff> staffList = staffDao.findAll();
	    model.addAttribute("staff", staffList);
	    model.addAttribute("showStaff", showStaff);
	    return "home";
	}
	//READ
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
	
	//READ
	public String staffList(Model model) {
	List<Staff> staff = staffDao.findAll(); 
	 model.addAttribute("staff", staff);
	 model.addAttribute("message", staff.isEmpty() 
	      ? "No films found." 
	      : "Found " + staff.size() + " films.");
	  
	  return "home";
	}
	
	 // SORT
    @RequestMapping(path = "sortStaff.do", method = RequestMethod.GET)
    public String staffSort(Model model, @RequestParam("sort") String sort) {
        List<Staff> staff = staffDao.sortByName(sort);
        model.addAttribute("staff", staff);
        model.addAttribute("showStaff", true); // So table shows
        return "home";
    }
	

}
