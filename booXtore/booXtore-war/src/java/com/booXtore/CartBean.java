/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;


import com.booXtore.domain.Books;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CartSessionBeanLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

/**
 *
 * @author Antoine-Ali
 */
@Named(value = "cartBean")
@SessionScoped
public class CartBean implements Serializable {

    @EJB
    private CartSessionBeanLocal cSB;
    
    @EJB
    private BooksFacadeLocal bFL;
    
    private HashMap<Books, Integer> cart;
    
    private AuthenticationBean authBean;

    /**
     * Creates a new instance of CartBean
     */
    public CartBean() {
        
    }

    public HashMap<Books, Integer> getCart() {
        this.cart = cSB.getContent();
        return cart;
    }
    
    public String deleteBook(Books book){
        this.cSB.removeBook(book);
        return null;
    }
    
    public List<Books> getBooks(){
        List<Books> listBooks = new LinkedList<Books>();
        listBooks.addAll(getCart().keySet());
        
        return listBooks;
        
    }
    
    
    public String clearCart(){
        this.cSB.resetCart();
        return "cart.xhtml?faces-redirect=true";
    }
    
    public String verifyOrder(){
        if(this.cSB.getContent().size() > 0 && authBean.getIsConnected()){
            
            return "checkout.xhtml?faces-redirect=true";
        }
        else if(this.cSB.getContent().size() > 0 && !authBean.getIsConnected()){
            return "authentication.xhtml?faces-redirect=true";
        }
        else{
            
            FacesContext.getCurrentInstance().addMessage("controlCart:commander", new FacesMessage("Votre panier est vide"));
            return null;
        }
        
        
        
    }
    
    public String increment(Books book){
        this.cSB.addBook(book);
        return null;
    }
    
    public String decrement(Books book){
        this.cSB.decrementBook(book);
        return null;
    }
    
    public Integer getQuantity(Books book){
        return this.cSB.getContent().get(book);
        
    }
    
    
    public String addBook(Books book)
    {
       // this.cSB.addBook(this.bFL.find(bookId));
        this.cSB.addBook(book);
        return null;
    }
    
    public String getTotalPrice()
    {
        return String.valueOf(cSB.getTotalPrice()) + " €";
    }
    
    public String getTotalArticles()
    {
        if(cSB.getContent().isEmpty())
        {
            return "Vide";

        }
        else
        {
            String plural = "";
            if(cSB.getContent().size()>1)
            {
                plural = "s";
            }
            return String.valueOf(cSB.getContent().size()) + " Article" + plural;
        }
    }
}
    
