package com.sachin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.CartDAO;
import com.sachin.domain.Cart;

@Controller
public class CartController {
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private Cart cart;
	@Autowired
	private HttpSession httpSession;

	@PostMapping("/addCart")
	public ModelAndView addToCart(@RequestParam String productName, @RequestParam String productid,
			@RequestParam int price, @RequestParam int quantity)

	{
		ModelAndView mv = new ModelAndView("home");
		String loggedInUserId = (String) httpSession.getAttribute("loggedInUserId");
		if (loggedInUserId == null) {
			mv.addObject("errorMessage", "Please login to add any product to cart");
			return mv;
		}

		cart.setEmailid(loggedInUserId);
		cart.setProductName(productName);
		cart.setPrice(price);
		cart.setQuantity(quantity);
		cart.setProductid(productid);

		if (cartDAO.save(cart)) {
			mv.addObject("successMessage", "The product added to cart successfully");
		} else {
			mv.addObject("errorMessage", "Could not add the product to cart..please try again after some time");
		}
		return mv;

	}

	@GetMapping("/myCart")
	public ModelAndView getMyCartDetails() {
		ModelAndView mv = new ModelAndView("home");
		// it will return all the products which are added to cart
		// ??
		String loggedInUserID = (String) httpSession.getAttribute("loggedInUserId");
		if (loggedInUserID == null) {
			mv.addObject("errorMessage", "Please login to see your cart details");
			return mv;
		}
		List<Cart> cartList = cartDAO.list(loggedInUserID);
		mv.addObject("cartList", cartList);
		httpSession.setAttribute("carts", cartList.size());
		mv.addObject("isUserClickedMyCart", true);
		return mv;
	}

}
