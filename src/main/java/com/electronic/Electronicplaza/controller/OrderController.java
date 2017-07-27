package com.electronic.Electronicplaza.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.electronic.Electronicplazaback.dao.CartDAO;
import com.electronic.Electronicplazaback.dao.ProductDAO;
import com.electronic.Electronicplazaback.model.*;

@Controller
public class OrderController {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	/*@RequestMapping("/checkout")
	public String orderConfirm(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		
		List<Cart> list=cartDAO.getAll(username);
		int grandtotal=0;
		int cartidlast=0;
		for(Cart cart:list)
		{
			  
	    grandtotal=grandtotal+(cart.getQuantity()*cart.getPrice());
		cartidlast=cart.getCartid();
		}
		
		m.addAttribute("grandtotal",grandtotal);
		m.addAttribute("cartitems",list);
		return "checkout";
		
	}
	@RequestMapping(value="/updateCart/{grandtotal}")
	public String updateCartItem(@PathVariable("grandtotal") int grandtotal,HttpSession session,Model m)
	{
		
		String username=(String)session.getAttribute("username");
		
	    List<Cart> list=cartDAO.getAll(username);
	    for(Cart cart:list)
	    {
	    Product product=new Product();
	    product=productDAO.getById(cart.getProdid());
	    int stock=productDAO.getById(cart.getProdid()).getQuantity();
	    
	    int quantity=cart.getQuantity();
	     
	    product.setQuantity(stock-quantity);
	    productDAO.update(product);
	    cart.setStatus("Y");
	    cartDAO.update(cart);
	    }
	    m.addAttribute("username",username);
	    m.addAttribute("grandtotal",grandtotal);
	return "thankyou";
	}*/
}
