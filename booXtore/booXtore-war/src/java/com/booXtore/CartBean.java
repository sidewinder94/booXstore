/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;


import com.booXtore.domain.Books;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CartSessionBean;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.HashMap;
import javax.ejb.EJB;

/**
 *
 * @author Antoine-Ali
 */
@Named(value = "cartBean")
@SessionScoped
public class CartBean implements Serializable {

    @EJB
    private CartSessionBean cSB;
    
    @EJB
    private BooksFacadeLocal bFL;

    
    private HashMap<Books, Integer> cart;

    /**
     * Creates a new instance of CartBean
     */
    public CartBean() {
        
    }

    public HashMap<Books, Integer> getCart() {
        return cart;
    }
    
    public void addBook(int bookId)
    {
        this.cSB.addBook(this.bFL.find(bookId));
    }
}
    
