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

	//SHOWS editstaff
	@RequestMapping(path = "editstaff.do", method = RequestMethod.GET)
	public String showEditStaff(@RequestParam("id") int id, Model model) {
		Staff staff = staffDao.staffId(id);
		model.addAttribute("staff", staff);
		return "staff/editstaff";
	}
        
    //EDITS STAFF
	@RequestMapping(path = "staffupdate", method = RequestMethod.POST)
	public String updateStaff(Staff staff) {
		staffDao.update(staff);
		return "redirect:/staff.do?staffId=" + staff.getId();
	    
	    
	} //SHOWS Staffform
	@RequestMapping(path = "staffform", method = RequestMethod.GET)
	public String showStaffForm(Model model) {
	    model.addAttribute("staff", new Staff());
	    return "staff/staffform";
	}//CREATES STAFF
	@RequestMapping(path = "staffcreate", method = RequestMethod.POST)
	public String newStaff(Staff staff, Model model) {
	    staffDao.create(staff);
	    return "redirect:staff.do?staffId=" + staff.getId();
	}
    
	//SHOWS HOME with DB list
	@RequestMapping(path= {"/", "home.do"})
	public String index(@RequestParam(value = "showStaff", required = false) Boolean showStaff, Model model) {
	    List<Staff> staffList = staffDao.findAll();
	    model.addAttribute("staff", staffList);
	    model.addAttribute("showStaff", showStaff);
	    return "home";
	}
	//SHOWS staff by id on staff.do
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
	
	 // SORT NAME
    @RequestMapping(path = "sortStaff", method = RequestMethod.GET)
    public String staffSort(Model model, @RequestParam("sort") String sort) {
        List<Staff> staff = staffDao.sortByName(sort);
        model.addAttribute("staff", staff);
        model.addAttribute("showStaff", true); 
        return "home";
    }
    // SORT ID
    @RequestMapping(path = "sortStaffId", method = RequestMethod.GET)
    public String staffSortId(Model model, @RequestParam("sort") String sort) {
        List<Staff> staff = staffDao.sortById(sort);
        model.addAttribute("staff", staff);
        model.addAttribute("showStaff", true);
        return "home";
    }
    // SORT TITLE
    @RequestMapping(path = "sortStaffTitle", method = RequestMethod.GET)
    public String staffSortTitle(Model model, @RequestParam("sort") String sort) {
        List<Staff> staff = staffDao.sortByTitle(sort);
        model.addAttribute("staff", staff);
        model.addAttribute("showStaff", true);
        return "home";
    }
	
    //DELETE PAGE
    @RequestMapping(path = "delete", method = RequestMethod.GET)
    public String confirmDelete(@RequestParam("id") int id, Model model) {
        Staff staff = staffDao.staffId(id); 
        model.addAttribute("staff", staff);
        return "staff/delete";  // 
    }
 
    //DELETE METHOD
    @RequestMapping(path = "deletestaff", method = RequestMethod.POST)
    public String deleteStaff(@RequestParam("id") int id, Model model) {
        boolean deleted = staffDao.delete(id);
        model.addAttribute("staff", staffDao.findAll());
        model.addAttribute("showStaff", deleted);
        
        return "home";
    }
}
