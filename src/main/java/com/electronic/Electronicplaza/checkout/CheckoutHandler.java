package com.electronic.Electronicplaza.checkout;


import java.security.Principal;





import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.electronic.Electronicplazaback.dao.CartDAO;
import com.electronic.Electronicplazaback.model.Cart;
import com.electronic.Electronicplazaback.dao.ProductDAO;
import com.electronic.Electronicplazaback.model.Product;
@Component("checkoutHandler")
public class CheckoutHandler {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	HttpServletRequest request;
	public Checkout initialize(){
		System.out.println("i m here");
		Checkout checkout = new Checkout();
		int sum=0;
		String grandtotal;
		Principal p = request.getUserPrincipal();
	//	String username = (String) session.getAttribute("username");
		System.out.println(p.getName());
		checkout.setCartList(cartDAO.getAll(p.getName()));
		
			//System.out.println(cartDAO.getAll(p.getName()));
		for(Cart cartitem : cartDAO.getAll(p.getName())){
			
			sum=sum+cartitem.getQuantity()*cartitem.getPrice();
			
		}
		grandtotal=String.valueOf(sum);  
		
		System.out.println(grandtotal);
		checkout.setGrandtotal(grandtotal);
		return checkout;
		
	}
	
	public String updateCart(){
		
		Principal p = request.getUserPrincipal();
		int sum=0;
		String grandtotal;
		Checkout checkout = new Checkout();
		//List<Cart> list=cartDAO.getAll(username);
	    for(Cart cart:cartDAO.getAll(p.getName()))
	    {
	    Product product=new Product();
	    product=productDAO.getById(cart.getProdid());
	    int stock=productDAO.getById(cart.getProdid()).getQuantity();
	    
	    int quantity=cart.getQuantity();
	     
	    product.setQuantity(stock-quantity);
	    productDAO.update(product);
	    cart.setStatus("Y");
	    cartDAO.update(cart);
	    sum=sum+cart.getQuantity()*cart.getPrice();
	    }
        grandtotal=String.valueOf(sum);  
		
		System.out.println(grandtotal);
		checkout.setGrandtotal(grandtotal);	
		return grandtotal; 
		}
		
	
}



