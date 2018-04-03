package com.sachin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.SupplierDAO;
import com.sachin.domain.Category;
import com.sachin.domain.Supplier;
import com.sachin.domain.Supplier;

@Controller
public class SupplierManageController {
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private HttpSession httpSession;
	@RequestMapping(value="/saveSupplier", method=RequestMethod.POST)
	public ModelAndView saveSupplier(@RequestParam("sid") String sid , @RequestParam("sname") String sname,@RequestParam("saddress") String saddress) {
		supplier.setSid(sid);
		supplier.setSname(sname);
		supplier.setSaddress(saddress);
		
		boolean u=supplierDAO.saveOrUpdate(supplier);
		ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
		mv.addObject("isAdminClickedSaveSupplier", true);
		if(u)
		{
			mv.addObject("supplier", "Supplier saved successfully");
		}
		else
		{
			mv.addObject("supplier", "supplier not saved please contact admin");
		}
		
		return mv;

	}
	@RequestMapping(value="/manageSuppliers")
	public ModelAndView manageSuppliers()
	{
		List<Supplier>supplier=supplierDAO.list();
		httpSession.setAttribute("supplier", supplier);
		
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isAdminClickedManageSuppliers", true);
		return mv;
		
	}
	@RequestMapping(value="/deleteSupplier")
	public ModelAndView deleteCategory(@RequestParam String id ) {
		boolean u=supplierDAO.delete(id);
		ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
		
		if(u)
		{
			mv.addObject("supplier", "Supplier deleted successfully");
			
		}
		else
		{
			mv.addObject("supplier", "supplier not deleted please contact admin");
			
		}
		
		return mv;

	}
	@RequestMapping(value="/updateSupplier")
	public ModelAndView updateSuppliers(@RequestParam String id)
	{
		Supplier updateSupplier=supplierDAO.get(id);
		ModelAndView mv=new ModelAndView("redirect:/manageSuppliers");
	    mv.addObject("isAdminClickedEdit", true);
		httpSession.setAttribute("updateSupplier", updateSupplier);
		return mv;
	}

}
