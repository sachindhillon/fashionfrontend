package com.sachin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.UserDAO;
import com.sachin.domain.User;

@Controller
public class AdminController {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;
	@Autowired
	private HttpSession httpSession;

	
	
}
