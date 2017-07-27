package com.electronic.Electronicplaza.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.electronic.Electronicplazaback.dao.UserDetailDAO;
import com.electronic.Electronicplazaback.model.*;
import org.springframework.stereotype.Controller;
@Controller
public class UserDetailsController {
	
	@Autowired
	UserDetailDAO userdetailDAO;
	@RequestMapping(value ="/InsertUser", method = RequestMethod.POST)
	public String insertUser(@ModelAttribute("user") UserDetail user, Model m) 
		{
				
		user.setRole("ROLE_USER");
		userdetailDAO.insert(user);
		    
		return "UserDetail";
        }
}
