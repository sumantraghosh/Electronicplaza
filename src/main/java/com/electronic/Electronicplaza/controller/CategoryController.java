package com.electronic.Electronicplaza.controller;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import com.electronic.Electronicplazaback.dao.CategoryDAO;
import com.electronic.Electronicplazaback.model.Category;
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

public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;
		
		@RequestMapping("/Category")
		public String viewCategory(Model m)
		{
			Category category=new Category();
			m.addAttribute("list",categoryDAO.getAll());
			m.addAttribute("category", category);
			return "Category";
		}
		
		@PostMapping("/AddCategory")
		public String addCategory(@ModelAttribute("Category") Category category, BindingResult result, ModelMap model)
		{
			categoryDAO.insert(category);
			return "redirect:/Category";
			
		}
		
		@RequestMapping("/deletecategory/{id}")
		public String removeCat(@PathVariable("id")int id)
		{
			categoryDAO.delete(categoryDAO.getById(id));
			return "redirect:/Category";
		}
	
 

		@RequestMapping(value="/updateCategory/{catid}")
		public String getUpdateCategory(@PathVariable("catid") int catid,Model m)
		{
			
			Category category=categoryDAO.getById(catid);
			m.addAttribute("category",category);		
			List<Category> list=categoryDAO.getAll();
			m.addAttribute("list",list);
			boolean flag=true;
			m.addAttribute("flag",flag);
			return "/Category";
		    
		} 

			
	

		
} 
   