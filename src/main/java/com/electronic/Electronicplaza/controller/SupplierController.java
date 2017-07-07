package com.electronic.Electronicplaza.controller;
import org.springframework.stereotype.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import com.electronic.Electronicplazaback.dao.SupplierDAO;
import com.electronic.Electronicplazaback.model.Supplier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.BindingResult;
import java.util.List;
@Controller

public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
		
		@RequestMapping("/Supplier")
		public String viewSupplier(Model m)
		{
			Supplier supplier=new Supplier();
			m.addAttribute("list",supplierDAO.getAll());
			m.addAttribute("supplier", supplier);
			return "Supplier";
		}
		
		@PostMapping("/AddSupplier")
		public String addSupplier(@ModelAttribute("Supplier") Supplier supplier, BindingResult result, ModelMap model)
		{
			supplierDAO.insert(supplier);
			return "redirect:/Supplier";
			
		}
		
		@RequestMapping("/deletesupplier/{id}")
		public String removeSupp(@PathVariable("id")int id)
		{
			supplierDAO.delete(supplierDAO.getById(id));
			return "redirect:/Supplier";
		}
	
 

		@RequestMapping(value="/updateSupplier/{suppid}")
		public String getUpdateSupplier(@PathVariable("suppid") int suppid,Model m)
		{
			
			Supplier supplier=supplierDAO.getById(suppid);
			m.addAttribute("supplier",supplier);		
			List<Supplier> list=supplierDAO.getAll();
			m.addAttribute("list",list);
			boolean flag=true;
			m.addAttribute("flag",flag);
			return "/Supplier";
		    
		} 

			
	

		
} 
   