package com.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.daoImpl.OrdersDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.daoImpl.UserDaoImpl;
import com.model.Cart;
import com.model.Orders;
import com.model.Product;
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
	@Autowired
	OrdersDaoImpl ordersDaoImpl;
	
	
	
	@RequestMapping(value="/addToCart", method=RequestMethod.POST)
    public ModelAndView addToCart(HttpServletRequest req){
		 ModelAndView mav=new ModelAndView();
		 Principal principal =req.getUserPrincipal();
		 
		 try{
			 String userEmail=principal.getName();
			 int pid=Integer.parseInt(req.getParameter("pid"));
			 Double cartPrice=Double.parseDouble(req.getParameter("pPrice"));
			 int cartQuantity=Integer.parseInt(req.getParameter("quant"));
		     String servicename=req.getParameter("name");
		     String imgname=req.getParameter("imgname1");
		     String suppname=req.getParameter("suppname");
		     Cart cartExists=cartDaoImpl.getCartById(pid, userEmail);
		     User user=userDaoImpl.findById(userEmail);
		     if(cartExists==null){
		    	 Cart cr=new Cart();
		    	 cr.setCartPrice(cartPrice);
		    	 cr.setCartProductId(pid);
		    	 cr.setCartProductName(servicename);
		    	 cr.setCartImage(imgname);
		    	 cr.setCartQuantity(cartQuantity);
		    	 cr.setCartProductSupplier(suppname);
		    	 User u=userDaoImpl.findById(userEmail);
		    	 cr.setCartUserDetails(u);
		    	 cartDaoImpl.insert(cr);
		     }
		     else{
		    	 Cart cr=new Cart();
		    	 cr.setCartId(cartExists.getCartId());
		    	 cr.setCartPrice(cartPrice);
		    	 cr.setCartProductId(pid);
		    	 cr.setCartProductName(servicename);
		    	 cr.setCartImage(imgname);
		    	 cr.setCartQuantity(cartQuantity);
		    	 cr.setCartProductSupplier(suppname);
		    	 User u=userDaoImpl.findById(userEmail);
		    	 cr.setCartUserDetails(u);
		    	 cartDaoImpl.update(cr);
		     }
		    mav.addObject("cartInfo",cartDaoImpl.findCartById(userEmail));
		    mav.setViewName("cart");
		    return mav;
		    
		 }catch(Exception e){
			 e.printStackTrace();
			 mav.setViewName("login");
			 return mav;			 
		 }
	 }
  
	
	@RequestMapping(value="/prodDetails/{cid}", method=RequestMethod.GET)
	public ModelAndView prodDetail(@PathVariable("cid") int cid,HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView();
		Product product=productDaoImpl.findById(cid);
		mv.addObject("product",product);
		mv.setViewName("prodDetails");
		return mv;
		
	}
	
	
	
	@RequestMapping(value="/invoiceProcess", method=RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest req)
	{
		System.out.println("Invoice Process");
		ModelAndView mv=new ModelAndView("invoice");
		Orders ord=new Orders();
		Principal principal=req.getUserPrincipal();
		String userEmail=principal.getName();
		Double total=Double.parseDouble(req.getParameter("total"));
		String payment= req.getParameter("payment");
		Date today = new Date();
		User user=userDaoImpl.findById(userEmail);
		ord.setUser(user);
		ord.setTotal(total);
		ord.setPayment(payment);
		ord.setDate(today);
		System.out.println(today);
		
		ordersDaoImpl.insertOrders(ord);
		mv.addObject("order",ord);
		mv.addObject("user",user);
		mv.addObject("cart",cartDaoImpl.findCartById(userEmail));
		return mv;
		
	}
	
	
	
	@RequestMapping(value="/goToCart", method=RequestMethod.GET)
	public ModelAndView goToCart(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView();
		Principal principal=req.getUserPrincipal();
		String userEmail=principal.getName();
		mv.addObject("cartInfo",cartDaoImpl.findCartById(userEmail));	
		mv.setViewName("cart");
		return mv;	
	}
	

	@RequestMapping(value="/checkout", method=RequestMethod.POST)
	public ModelAndView checkOut(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView("checkout");
		Principal principal=req.getUserPrincipal();
		String userEmail=principal.getName();
		User user=userDaoImpl.findById(userEmail);
		List<Cart> cart=cartDaoImpl.findCartById(userEmail);
		mv.addObject("user",user);
		mv.addObject("cart",cart);
		return mv;
		
	}
	
	@RequestMapping(value="/deletePCart/{cartId}", method=RequestMethod.GET)
	public ModelAndView deleteCart(@PathVariable("cartId") int cartId,HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView("checkout");
		Principal principal=req.getUserPrincipal();
		String userEmail=principal.getName();
		cartDaoImpl.deleteCart(cartId);
		mv.addObject("cartInfo",cartDaoImpl.findCartById(userEmail));
		mv.setViewName("cart");
		return mv;
		
	}
	

}
