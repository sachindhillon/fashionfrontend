package com.sachin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.CategoryDAO;
import com.sachin.domain.Category;

@Controller
public class CategoryManageController 
{
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	@Autowired
	private HttpSession httpSession;
	
@RequestMapping(value="/saveCategory", method=RequestMethod.POST)
	public ModelAndView saveCategory(@RequestParam("cid") String cid , @RequestParam("cname") String cname,@RequestParam("cdescription") String cdescription) {
		category.setCid(cid);
		category.setCname(cname);
		category.setCdescription(cdescription);
		boolean u=categoryDAO.saveOrUpdate(category);
		ModelAndView mv = new ModelAndView("redirect:/manageCategories");
		mv.addObject("isAdminClickedSaveCategory", true);
		if(u)
		{
			mv.addObject("category", "Category saved successfully");
			
		}
		else
		{
			mv.addObject("category", "category not saved please contact admin");
			
		}
		
		return mv;

	}

@RequestMapping(value="/deleteCategory")
public ModelAndView deleteCategory(@RequestParam String id ) {
	boolean u=categoryDAO.delete(id);
	ModelAndView mv = new ModelAndView("redirect:/manageCategories");
	
	if(u)
	{
		mv.addObject("category", "Category deleted successfully");
		
	}
	else
	{
		mv.addObject("category", "category not deleted please contact admin");
		
	}
	
	return mv;

}

@RequestMapping(value="/manageCategories")
public ModelAndView manageCategories()
{
	
	List<Category>categories=categoryDAO.list();
	httpSession.setAttribute("categories", categories);
	
	ModelAndView mv = new ModelAndView("home");
	mv.addObject("isAdminClickedManageCategories", true);
	return mv;
	
}
@RequestMapping("/updateCategory")
public ModelAndView updateCategories(@RequestParam String id)
{
	Category updateCategory=categoryDAO.get(id);
	ModelAndView mv=new ModelAndView("redirect:/manageCategories");
    mv.addObject("isAdminClickedEdit", true);
	httpSession.setAttribute("updateCategory", updateCategory);
	return mv;
}




}
