package com.electronic.Electronicplaza.controller;
import org.springframework.stereotype.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import com.electronic.Electronicplazaback.dao.*;
import com.electronic.Electronicplazaback.model.*;
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

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import com.electronic.Electronicplazaback.dao.*;
@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;
@RequestMapping(value="/addToCart/{prodid}")
public String addToCart(@PathVariable("prodid") int prodid,@ RequestParam("quantity") int quantity,HttpSession session,Model m)
{
int stock=productDAO.getById(prodid).getQuantity();
int check=0;
if(quantity>stock)
{
	check=1;
}
if(check==0)
{
Cart cart=new Cart();
int cartid=0,cartidmax=0;
String username=(String)session.getAttribute("username");
List<Cart> findcart=cartDAO.getAll(username);
for(Cart cart1:findcart)
{
cartid=cart1.getCartid();
}
if(findcart.size() ==0)
{
List<Cart> maxcartid=cartDAO.getMaxcartid();
for(Cart cart2:maxcartid)
{
cartidmax=cart2.getCartid();
}
cartidmax=cartidmax+1;
if(maxcartid.size()==0)
{
	cartidmax=1001;
}
cart.setCartid(cartidmax);
}
else
{
cart.setCartid(cartid);	
}
cart.setProdid(prodid);
cart.setQuantity(quantity);
cart.setStatus("N");
cart.setUsername(username);
Product product=productDAO.getById(prodid);
cart.setProdname(product.getProdname());
cart.setPrice(product.getPrice());
cartDAO.addToCart(cart);
List<Cart> list=cartDAO.getAll(username);
m.addAttribute("cartitems",list);
}
if(check==1)
{
	
	String username=(String)session.getAttribute("username");
    
    Product product=productDAO.getById(prodid);
	m.addAttribute("prodinfo",product);		
	boolean flag=true;
	m.addAttribute("flag",flag);
	return "ProdDesc";

}
else
return "Cart";

}
@RequestMapping(value="/moveTocart")
public String moveTOcart(HttpSession session,Model m)
{
	String username=(String)session.getAttribute("username");
    List<Cart> list=cartDAO.getAll(username);
    m.addAttribute("cartitems",list);
    if(list.size()==0)
    {
    	boolean flag=true;
    	m.addAttribute("flag1",flag);	
    }
    return "Cart";
}
@RequestMapping(value="/updateCartItem/{citemid}")
public String updateCartItem(@PathVariable("citemid") int citemid,@ RequestParam("quantity") int quantity,HttpSession session,Model m)
{
int check=0;
Cart cart=cartDAO.getById(citemid);
int stock=productDAO.getById(cart.getProdid()).getQuantity();
System.out.println(stock);
if(quantity>stock)
{
	//System.out.println("Quantity exceeds stock");
    check=1;
    String username=(String)session.getAttribute("username");
    List<Cart> list=cartDAO.getAll(username);
    m.addAttribute("cartitems",list);
    boolean flag=true;
	m.addAttribute("flag",flag);
}
if(check==0)
{
cart.setQuantity(quantity);

cartDAO.update(cart);
String username=(String)session.getAttribute("username");
List<Cart> list=cartDAO.getAll(username);
m.addAttribute("cartitems",list);

}
return "Cart";
}
@RequestMapping(value="/deleteCartItem/{citemid}")
public String deleteCartItem(@PathVariable("citemid") int citemid,HttpSession session,Model m)
{
Cart cart=cartDAO.getById(citemid);
cartDAO.delete(cart);
String username=(String)session.getAttribute("username");
List<Cart> list=cartDAO.getAll(username);
m.addAttribute("cartitems",list);
return "Cart";
}

}

