package com.electronic.Electronicplaza.controller;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping("/")
	public String home()
	{
		return "index";
		
	}
	@RequestMapping("/login")
	public String loginpage()
	{
		return "login";
		
	}
	@RequestMapping("/UserDetail")
	public String user()
	{
		return "UserDetail";
		
	}
	@RequestMapping("/AdminHome")
	public String adminhome()
	{
		return "AdminHome";
		
	}	
	@RequestMapping("/UserHome")
	public String userhome()
	{
		return "UserHome";
		
	}	
	
}