/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Book;
import java.util.HashMap;
import javax.ejb.Stateful;

/**
 *
 * @author Antoine-Ali
 * Classe panier contenant une liste de livres associés à une quantité
 */
@Stateful
public class CartSessionBean implements CartSessionBeanLocal {

    private HashMap<Book, Integer> content;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    
    public CartSessionBean() {
        this.content = new HashMap<>();
    }
    
    /**
     * Retourne le contenu complet du panier
     * @return Une HashMap contenant le contenu du panier
     */
    @Override
    public HashMap<Book, Integer> getContent() {
        return this.content;
    }

    /**
     * Ajoute un livre au contenu du panier. <br/>
     * Si le livre existe déjà on en ajoute un
     * @param book Le livre à ajouter
     */
    @Override
    public void addBook(Book book) {
        if(this.content.get(book)!= null)
        {
            Integer temp = this.content.get(book);
            temp++;
            this.content.put(book, temp);
        }
        else
        {
            this.content.put(book, 1);
        }
    }

    /**
     * Vide le contenu du panier
     */
    @Override
    public void resetCart() {
        this.content.clear();
    }

    /**
     * Retire un livre du panier
     * @param book Le livre à retirer du panier
     */
    @Override
    public void removeBook(Book book) {
        this.content.remove(book);
    }
}
