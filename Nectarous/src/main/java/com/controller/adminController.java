package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
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

import com.daoImpl.*;
import com.model.*;

@SuppressWarnings("unused")
@Controller
@RequestMapping("/admin")
public class adminController {
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	SessionFactory sessionFactory;
	

	 @RequestMapping("/adding")
	   public String addPage(){
		System.out.println("Executing  the method adding");
		   return "adding";
	   }

	 
	@RequestMapping(value="/saveCat", method= RequestMethod.POST)
	public ModelAndView saveCategory(@RequestParam("cid") int cid,@RequestParam("name") String name)
	{
	  
		ModelAndView mav=new ModelAndView();
		Category c=new Category();
		c.setCid(cid);
		c.setName(name);
		categoryDaoImpl.insertCategory(c);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value="/saveSupp", method= RequestMethod.POST)
	public ModelAndView saveSupplier(@RequestParam("sid") int sid,@RequestParam("supplierName") String supplierName)
	{
		  
		ModelAndView mav=new ModelAndView();
		Supplier s=new Supplier();
		s.setSid(sid);
		s.setSupplierName(supplierName);
		supplierDaoImpl.insertSupplier(s);
		mav.setViewName("index");
		return mav;	
	}
	
	
	@RequestMapping(value="/saveProduct", method= RequestMethod.POST)
	public String saveProduct(HttpServletRequest request,@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3)
	{
		System.out.println("ENTERING DATA");
		Product p=new Product();
		p.setName(request.getParameter("pName"));
		p.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		p.setDescription(request.getParameter("pDescription"));
		p.setStock(Integer.parseInt(request.getParameter("pStock")));
		p.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));
		p.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String filename1=file1.getOriginalFilename();
		String filename2=file2.getOriginalFilename();
		String filename3=file3.getOriginalFilename();
		p.setImgname1(filename1);
		p.setImgname2(filename2);
		p.setImgname3(filename3);
		productDaoImpl.insertProduct(p);
		System.out.println("File path File"+filepath+" "+filename1);
		System.out.println("File path File"+filepath+" "+filename1);
		System.out.println("File path File"+filepath+" "+filename1);
		
		try {
			byte imagebyte1[]=file1.getBytes();
			byte imagebyte2[]=file2.getBytes();
			byte imagebyte3[]=file3.getBytes();
			BufferedOutputStream fos1=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename1));
			BufferedOutputStream fos2=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename2));
			BufferedOutputStream fos3=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename3));
			fos1.write(imagebyte1);
			fos2.write(imagebyte2);
			fos3.write(imagebyte3);
			fos1.close();
			fos2.close();
			fos3.close();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "index";
		
	}

	@RequestMapping(value="/productList")
	public ModelAndView productList()
	{
		System.out.println("Executing Product List");  
		ModelAndView mav=new ModelAndView();
		mav.addObject("prodList",productDaoImpl.retrieve());
		mav.setViewName("productList");
		return mav;
	}
	
	
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		m.addAttribute("satList", supplierDaoImpl.retrieve());
		m.addAttribute("prodList", productDaoImpl.retrieve());
	}
	
	@RequestMapping("/deleteProduct/{pid}")
	public String deleteProd(@PathVariable("pid") int pid) {
		System.out.println("delete product");
		productDaoImpl.deleteProduct(pid);
		return "redirect:/admin/productList?del";
	}

		
	@RequestMapping("/updateProduct")
	public ModelAndView updateProd(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
		Product p=productDaoImpl.findById(id);
		mv.addObject("prod",p);
		mv.addObject("cList", categoryDaoImpl.retrieve());
		mv.addObject("sList", supplierDaoImpl.retrieve());
		mv.setViewName("updateProduct");
		return mv;
	}
	
	@RequestMapping(value="/productUpdate", method= RequestMethod.POST)
	public ModelAndView editProduct(HttpServletRequest request,@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3)
	{
		ModelAndView mv=new ModelAndView();
		
		String pid=request.getParameter("pid");
		String pName=request.getParameter("pName");
		String pPrice=request.getParameter("pPrice");
		String pStock=request.getParameter("pStock");
		String pDesc=request.getParameter("pDesc");
		String pCat=request.getParameter("pCategory");
		String pSup=request.getParameter("pSupplier");
		
		Product p2=productDaoImpl.findById(Integer.parseInt(pid));
		
		p2.setName(request.getParameter("pName"));
		p2.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		p2.setDescription(request.getParameter("pDesc"));
		p2.setStock(Integer.parseInt(request.getParameter("pStock")));
		p2.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));
		p2.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String filename1=file1.getOriginalFilename();
		String filename2=file2.getOriginalFilename();
		String filename3=file3.getOriginalFilename();
		p2.setImgname1(filename1);
		p2.setImgname2(filename2);
		p2.setImgname3(filename3);
		productDaoImpl.updateProduct(p2);
		System.out.println("File path File"+filepath+" "+filename1);
		System.out.println("File path File"+filepath+" "+filename2);
		System.out.println("File path File"+filepath+" "+filename3);
		
		try {
			byte imagebyte1[]=file1.getBytes();
			byte imagebyte2[]=file2.getBytes();
			byte imagebyte3[]=file3.getBytes();
			BufferedOutputStream fos1=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename1));
			BufferedOutputStream fos2=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename2));
			BufferedOutputStream fos3=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename3));
			fos1.write(imagebyte1);
			fos2.write(imagebyte2);
			fos3.write(imagebyte3);
			fos1.close();
			fos2.close();
			fos3.close();
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		mv.setViewName("redirect:productList");
		return mv;
		
	}


}