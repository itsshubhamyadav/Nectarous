package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.daoImpl.UserDaoImpl;
import com.model.User;


@SuppressWarnings("unused")
@Controller
public class homeController {
   
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;	
	
	
	@RequestMapping("/birthday")
	   public String birthday(){
			System.out.println("Executing  the method Birthday Page");
		   return "birthday";
	   }
	
	
	@RequestMapping("/login")
	   public String loginPage(){
			System.out.println("Executing  the method Login Page");
		   return "login";
	   }
	
	@RequestMapping("/userlogged")
	   public String userlogged(){
			System.out.println("Executing  the method logged-in Page");
		   return "redirect:/index";
	   }
	
	@RequestMapping("/error")
	   public String errorPage(){
			System.out.println("Executing  the method error Page");
		   return "error";
	   }
	
	@RequestMapping("/")
   public String index(){
		System.out.println("Executing  the method homePage");
	   return "index";
   }
   
	@RequestMapping("/index")
	   public String home(){
		System.out.println("Executing  the method homePage");
		   return "index";
	   }
	
	@RequestMapping("/aboutUs")
	   public String aboutUs(){
		System.out.println("Executing  the method AboutUs");
		   return "aboutUs";
	   }
	
	@RequestMapping("/contactUs")
	   public String contactUs(){
		System.out.println("Executing  the method Contact Us");
		   return "contactUs";
	   }
	
//	@RequestMapping("/login")
//	   public String logi(){
//		System.out.println("Executing  the method Login");
//		   return "index";
//	   }
	@RequestMapping("/goTologin")
	   public String goTologin(){
		System.out.println("Executing  the method Login");
		   return "login";
	   }
	
	
//	@RequestMapping(value="/goTologin", method=RequestMethod.GET)
//	public ModelAndView login()
//	{
//		ModelAndView mav=new ModelAndView();
//		mav.setViewName("login");
//		return mav;
//	}
	
	@RequestMapping("/signUp")
	   public ModelAndView showRegiste(){
			ModelAndView mv=new ModelAndView();
			mv.addObject("user",new User());
			mv.setViewName("login");
		   return mv;
	   }
	
//	@RequestMapping(value="/signUp", method=RequestMethod.GET)
//	public ModelAndView showRegister()
//	{
//		ModelAndView mav=new ModelAndView();
//		mav.addObject("user",new User());
//		mav.setViewName("signUp");
//		return mav;
//	}
	
	@RequestMapping(value="/saveregister", method=RequestMethod.POST)
	public ModelAndView saveRegister(@Valid @ModelAttribute("user") User user, BindingResult result)
	{
		ModelAndView mav=new ModelAndView();
		if(result.hasErrors())
		{
			mav.setViewName("login");
			return mav;
		}
		else {
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userDaoImpl.insertUser(user);
			mav.setViewName("redirect:/goTologin");
			return mav;
		}
	}
	@RequestMapping("/productCustList")
	public ModelAndView productcustList(@RequestParam("cid") int cid)
	{
		System.out.println(cid);
		ModelAndView mav=new ModelAndView();
		mav.addObject("prodList",productDaoImpl.getProdById(cid));
		mav.setViewName("productCustList");
		return mav;
	}
	
//	@RequestMapping("/addToCart")
//	   public String addToCart(){
//		   return "prodDetail";
//	   }
//	
	@RequestMapping("/prodDetail/{pid}")
	public ModelAndView details(@PathVariable("pid") int pid) {
		ModelAndView mav=new ModelAndView("prodDetail");
		System.out.println("Product details");
		System.out.println("*********");
		 System.out.println(pid);
		 System.out.println("*********");
		mav.addObject("product",productDaoImpl.findById(pid));
		return mav;
	}

	
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		m.addAttribute("satList", supplierDaoImpl.retrieve());
		m.addAttribute("productList", productDaoImpl.retrieve());
	}
	
}