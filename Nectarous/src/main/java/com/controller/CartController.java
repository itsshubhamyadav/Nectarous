package com.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.daoImpl.CartDaoImpl;
import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.daoImpl.UserDaoImpl;
import com.model.Cart;
import com.model.User;

@SuppressWarnings("unused")
@Controller
public class CartController {
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	CartDaoImpl cartDaoImpl;
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@RequestMapping(value="/addToCart", method= RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		try {
			Principal principal=req.getUserPrincipal();
			String userEmail=principal.getName();
			int pid=Integer.parseInt(req.getParameter("pid"));
			int x = pid;
			Double price=Double.parseDouble(req.getParameter("pPrice"));
			int quantity=Integer.parseInt(req.getParameter("quant"));
			String productName=req.getParameter("name");
			String imgname=req.getParameter("imgname");
			Cart exists= cartDaoImpl.getCartById(pid, userEmail);
			if(exists==null)
			{
				Cart cm=new Cart();
				cm.setCartPrice(price);
				cm.setCartProductId(pid);
				cm.setCartProductName(productName);
				cm.setCartImage(imgname);
				User u=userDaoImpl.findById(userEmail);
				cm.setCartUserDetails(u);
				cartDaoImpl.insert(cm);
			}
			else {
				Cart cm=new Cart();
				cm.setCartPrice(price);
				cm.setCartProductId(pid);
				cm.setCartProductName(productName);
				cm.setCartImage(imgname);
				User u=userDaoImpl.findById(userEmail);
				cm.setCartUserDetails(u);
				cartDaoImpl.update(cm);
			}
			
			mv.addObject("cartInfo",cartDaoImpl.findCartById(userEmail));
			mv.setViewName("cart");
			
			return mv;
		}	
		catch(Exception e)
		{
			mv.setViewName("login");
			return mv;
		}
		
		
		
	}
	

}
