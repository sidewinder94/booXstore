/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import java.util.HashMap;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface CartSessionBeanLocal {

    HashMap<Books, Integer> getContent();

    /**
     * Ajoute un livre au panier, si le livre est déjà dans
     * le panier, ajoute une unité de quantité dans le panier
     * @param book
     */
    void addBook(Books book);

    /**
     * Vide le panier
     */
    void resetCart();

    /**
     * Retire un livre du panier
     * @param book
     */
    void removeBook(Books book);

    /**
     * Return the total price of the items in the cart
     * @return The total price of the items in the cart
     */
    Float getTotalPrice();

    /**
     * Enlève une unité d'un livre du panier, enlève le livre
     * si la quantité devient zéro
     * @param book le livre en question
     */
    public void decrementBook(Books book);
    
}
