package com.sachin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.UserDAO;
import com.sachin.domain.User;

@Controller
public class UserController
{
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;
	
	@Autowired
	private HttpSession httpSession;
	
	@RequestMapping(value="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(@RequestParam("username") String emailid, @RequestParam("password") String password)
	{
		ModelAndView mv;
		user.setEmailid(emailid);
		user.setPassword(password);
		User u = userDAO.validate(emailid, password);
		
		if(u==null)
		{
			mv = new ModelAndView("home");
			mv.addObject("invalid", "invalid credentials");
		}
		else
		{
			httpSession.setAttribute("loggedInUserId", u.getEmailid());
			if(u.getRole()=='a' || u.getRole()=='A')
			{
				mv = new ModelAndView("home");
				String name = u.getName();
				httpSession.setAttribute("username", "Welcome"+" "+name);
				httpSession.setAttribute("loggedIn", true);
				mv.addObject("isUseraAdmin", true);
			}
			
			else 
			{
				
				mv = new ModelAndView("home");
				String name = u.getName();
				httpSession.setAttribute("loggedIn", true);
				httpSession.setAttribute("username", "Welcome"+" "+name);
				mv.addObject("isCustomer",true);
			}
			
		}
		return mv;
	}
	
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public ModelAndView register(@RequestParam("email") String emailid,
			@RequestParam("user_password") String password,
			@RequestParam("mobile_no") String mobile,
			@RequestParam("first_name") String firstname,
			@RequestParam("last_name")String lastname)
	{
		ModelAndView mv;
		
		user.setEmailid(emailid);
		user.setPassword(password);
		user.setMobile(mobile);
		user.setName(firstname+" "+lastname);
		
		boolean u=userDAO.save(user);
		if(u==false)
		{
			mv = new ModelAndView("home");
			String msg = "not registered";
			mv.addObject("failmsg", msg);
		}
		else
		{
			mv = new ModelAndView("home");
			
			mv.addObject("register", "successfully registered");
		}
		return mv;
	}
}
