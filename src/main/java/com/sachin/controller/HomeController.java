package com.sachin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.CartDAO;
import com.sachin.dao.CategoryDAO;
import com.sachin.dao.ProductDAO;
import com.sachin.dao.SupplierDAO;
import com.sachin.domain.Cart;
import com.sachin.domain.Category;
import com.sachin.domain.Product;
import com.sachin.domain.Supplier;

@Controller
public class HomeController {
	@Autowired
	private Category category;
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private HttpSession httpSession;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private CartDAO cartDAO;
	
	
	@RequestMapping(value="/")
	public ModelAndView home()
	{
		List<Category>categories=categoryDAO.list();
		httpSession.setAttribute("categories", categories);
		
		List<Product>products=productDAO.list();
		httpSession.setAttribute("products", products);
		
		List<Supplier>supplier=supplierDAO.list();
		httpSession.setAttribute("supplier", supplier);
		
		
		
		ModelAndView mv = new ModelAndView("home");
		
		
	
		
		
		
		return mv;
	}
	
	@RequestMapping(value="/homePage")
	public ModelAndView homePage()
	{	
		ModelAndView mv = new ModelAndView("home");
		List<Category>categories=categoryDAO.list();
		httpSession.setAttribute("categories", categories);
		
	
		return mv;
	}

	@RequestMapping(value="/login")
	public ModelAndView login()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("isUserClickedLogin", true);
		return mv;
		
	}

	@RequestMapping(value="/register")
	public ModelAndView register()
	{
		List<Product> products = productDAO.list();
		httpSession.setAttribute("products", products);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("isUserClickedRegister", true);
		return mv;
		
	}
	
	
	@RequestMapping(value="/adminhome")
	public ModelAndView adminHome()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("isUserClickedHomeTab", true);
		return mv;
		
	}
	
	@RequestMapping(value="/logoutUser")
	public ModelAndView logout()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/homePage");
		httpSession.removeAttribute("loggedIn");
		mv.addObject("isUserClickedLogout", true);
		return mv;
		
	}

}
