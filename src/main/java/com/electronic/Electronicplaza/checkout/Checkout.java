

package com.electronic.Electronicplaza.checkout;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.electronic.Electronicplazaback.model.Cart;

public class Checkout implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private List<Cart> cartList;
	private String grandtotal;
	public Checkout(){
		cartList =new ArrayList<Cart>();
	    
	}
	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}
	
	public String getGrandtotal() {
	      return grandtotal;
	}
	public void setGrandtotal(String grandtotal) {
	      this.grandtotal=grandtotal;
	}
	

}

	

