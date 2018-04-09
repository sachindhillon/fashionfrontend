package com.sachin.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sachin.dao.CategoryDAO;
import com.sachin.dao.ProductDAO;
import com.sachin.dao.SupplierDAO;
import com.sachin.domain.Category;
import com.sachin.domain.Product;
import com.sachin.domain.Supplier;
import com.sachin.utility.FileUtil;

@Controller
public class ProductsManageController {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	@Autowired
	private HttpSession httpSession;
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private FileUtil fileUtil;
	@Autowired
	private SupplierDAO supplierDAO;
	
private static final Logger logger=LoggerFactory.getLogger(FileUtil.class);
	
private static String rootPath="C:\\Users\\Muskan Rana\\eclipse-workspace\\fashionfront\\src\\main\\webapp\\resources\\images";

	@RequestMapping(value = "/saveProducts", method = RequestMethod.POST)
	public ModelAndView saveProduct(@RequestParam("pid") String pid, @RequestParam("pname") String pname,
			@RequestParam("pdescription") String pdescription, @RequestParam("price") String price,
			@RequestParam("category") String categoryId, @RequestParam("supplier") String supplierId,
			@RequestParam("file") MultipartFile file) {
		product.setPid(pid);
		product.setPname(pname);
		product.setPdescription(pdescription);
		product.setPrice((Integer.parseInt(price)));
		product.setCategoryID(categoryId);
		product.setSupplierID(supplierId);

		ModelAndView mv = new ModelAndView("redirect:/manageProducts");
		httpSession.setAttribute("isAdminClickedSaveProducts", true);
		if (productDAO.save(product)) {
			mv.addObject("product", "Product saved successfully");

			if (fileUtil.fileCopyFashion(file, pid + ".png")) {
				mv.addObject("uploadMessage", "image uploaded successfully");
			} else {
				mv.addObject("uploadMessage", "image not uploaded ");
			}

		} else {
			mv.addObject("product", "product not saved please contact admin");
		}

		return mv;

	}

	@RequestMapping(value = "/manageProducts")
	public ModelAndView manageProducts() {
		List<Supplier> supplier = supplierDAO.list();
		httpSession.setAttribute("supplier", supplier);

		List<Category> categories = categoryDAO.list();
		httpSession.setAttribute("categories", categories);

		List<Product> products = productDAO.list();
		httpSession.setAttribute("products", products);

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isAdminClickedManageProducts", true);
		return mv;

	}

	@RequestMapping(value = "/deleteProducts")
	public ModelAndView deleteProduct(@RequestParam String id) {
		boolean u = productDAO.delete(id);
		ModelAndView mv = new ModelAndView("redirect:/manageProducts");

		if (u) {
			mv.addObject("product", "Product deleted successfully");

		} else {
			mv.addObject("product", "product not deleted please contact admin");

		}

		return mv;

	}

	@RequestMapping(value = "/updateProducts")
	public ModelAndView updateProducts(@RequestParam String id) {
		Product updateproduct = productDAO.get(id);
		ModelAndView mv = new ModelAndView("redirect:/manageProducts");
		mv.addObject("isAdminClickedEdit", true);
		httpSession.setAttribute("updateproduct", updateproduct);
		return mv;
	}

	@RequestMapping("/getproduct")
	public ModelAndView getProduct(@RequestParam String id) 
	{
		// based on id, fetch the details from productDAO
		Product products = productDAO.get(id);
		// navigate to home page
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("selectedproduct", products);
		
		mv.addObject("isUserSelectedProduct", true);
		
		return mv;
	}

}
