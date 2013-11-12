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

    /**
     * Creates a new instance of CartBean
     */
    public CartBean() {
        
    }

    /**
     * met a jour le panier par rapport a l'EJB
     * @return le panier
     */
    public HashMap<Books, Integer> getCart() {
        this.cart = cSB.getContent();
        return cart;
    }
    
    /**
     * supprime un livre du panier
     * @param book
     * @return recharge la page
     */
    public String deleteBook(Books book){
        this.cSB.removeBook(book);
        return null;
    }
    
    /**
     *
     * @return la liste des livres du panier
     */
    public List<Books> getBooks(){
        List<Books> listBooks = new LinkedList<Books>();
        listBooks.addAll(getCart().keySet());
        
        return listBooks;
        
    }
    
    
    /**
     * vide le panier
     * @return recharche la page
     */
    public String clearCart(){
        this.cSB.resetCart();
        return "cart.xhtml?faces-redirect=true";
    }
    
    public String verifyOrder(){
        if(this.cSB.getContent().size() > 0){
            
            return "checkout.xhtml?faces-redirect=true";
        }
        else{
            
            FacesContext.getCurrentInstance().addMessage("controlCart:commander", new FacesMessage("Votre panier est vide"));
            return null;
        }
        
        
        
    }
    
    /**
     * ajoute une unité d'un livre au panier (bouton +)
     * @param book
     * @return recharge la page
     */
    public String increment(Books book){
        this.cSB.addBook(book);
        return null;
    }
    
    /**
     * enlève une unité d'un livre au panier (bouton -)
     * @param book
     * @return recharge la page
     */
    public String decrement(Books book){
        this.cSB.decrementBook(book);
        return null;
    }
    
    /**
     *
     * @param book
     * @return la quantité d'un livre dans le panier
     */
    public Integer getQuantity(Books book){
        return this.cSB.getContent().get(book);
        
    }
    
    
    /**
     * ajoute un livre dans le panier
     * @param book
     * @return recharge la page
     */
    public String addBook(Books book)
    {
       // this.cSB.addBook(this.bFL.find(bookId));
        this.cSB.addBook(book);
        return null;
    }
    
    /**
     *
     * @return une String contenant le prix total du panier
     */
    public String getTotalPrice()
    {
        return String.valueOf(cSB.getTotalPrice()) + " €";
    }
    
    /**
     *
     * @return un string contenant un résumé du contenu et du prix
     * du panier a afficher dans la navbar
     */
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
    
