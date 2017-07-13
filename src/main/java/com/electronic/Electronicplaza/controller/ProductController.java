package com.electronic.Electronicplaza.controller;
import java.util.LinkedHashMap;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.validation.BindingResult;
import com.electronic.Electronicplazaback.dao.CategoryDAO;
import com.electronic.Electronicplazaback.dao.ProductDAO;
import com.electronic.Electronicplazaback.dao.SupplierDAO;
import com.electronic.Electronicplazaback.model.Category;
import com.electronic.Electronicplazaback.model.Product;
import com.electronic.Electronicplazaback.model.Supplier;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
@Controller
public class ProductController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/Product")
	public String showProduct(Model m)
	{
		Product product = new Product();
		List <Product> products = productDAO.getAll();
		m.addAttribute("product", product);
		m.addAttribute("prodlist", products);
		List <Category> categories = categoryDAO.getAll();
		m.addAttribute("catlist",categories);
		
		List <Supplier> suppliers = supplierDAO.getAll();
		m.addAttribute("supplist",suppliers);
		
		return "Product";
		
	}
	@RequestMapping("/AllProducts")
	public String showAllProduct(Model m)
	{
		Product product = new Product();
		List <Product> products = productDAO.getAll();
		m.addAttribute("product", product);
		m.addAttribute("prodlist", products);
		
		return "AllProducts";
		
	}
	@RequestMapping(value="/ProdDesc/{prodid}")
	public String showProductDesc(@PathVariable("prodid")int prodid,Model m)
	{
		
		Product product = productDAO.getById(prodid);
		m.addAttribute("prodinfo", product);
		return "ProdDesc";
		
	}
	@RequestMapping(value ="/InsertProduct", method = RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product, Model m,@RequestParam("pimage") MultipartFile filedet,BindingResult result) 
		{
		
		
	
		product.setCat(categoryDAO.getById(product.getCat().getCatid()));
				
		productDAO.insert(product);
		System.out.println("image storing started");
		String path="c:\\Users\\ABC\\workspace\\Electronicplaza\\src\\main\\webapp\\WEB-INF\\assets\\images\\";
		String fileinfo=path+product.getProdid()+".jpg";
		File f=new File(fileinfo);
		if(!filedet.isEmpty())
		{
			try{
				byte buff[]=filedet.getBytes();
				FileOutputStream fos=new FileOutputStream(f);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buff);
			}
			catch(Exception e)
			{
				System.out.println("Exception arised");
			}
		}
		else
		{
			System.out.println("file uploading problem");
		}
		
		
		return "redirect:Product";
			
		
	}
	
	@RequestMapping(value="/updateProduct/{prodid}")
	public String updateProduct(@PathVariable("prodid")int prodid,Model m)
	{
		
		
		Product product = productDAO.getById(prodid);
		List <Product> products = productDAO.getAll();
		m.addAttribute("product", product);
		m.addAttribute("prodlist",products);
		List <Category> categories = categoryDAO.getAll();
		
		m.addAttribute("catlist",categories);
		return "Product";
	}
	
	@RequestMapping(value="/deleteProduct/{prodid}")
	public String deleteProduct(@PathVariable("prodid")int prodid,Model m)
	{
		productDAO.delete(productDAO.getById(prodid));
			
		return "redirect:/Product";
	}
	
	
	
		
} 
