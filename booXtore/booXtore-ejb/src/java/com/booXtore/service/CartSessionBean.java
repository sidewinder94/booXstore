/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import java.util.LinkedHashMap;
import javax.ejb.Stateful;

/**
 *
 * @author Antoine-Ali
 * Classe panier contenant une liste de livres associés à une quantité
 */
@Stateful
public class CartSessionBean implements CartSessionBeanLocal {

    private LinkedHashMap<Books, Integer> content;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    
    public CartSessionBean() {
        this.content = new LinkedHashMap<>();
    }
    
    /**
     * Retourne le contenu complet du panier
     * @return Une HashMap contenant le contenu du panier
     */
    @Override
    public LinkedHashMap<Books, Integer> getContent() {
        return this.content;
    }

    /**
     * Ajoute un livre au contenu du panier. <br/>
     * Si le livre existe déjà on en ajoute un
     * @param book Le livre à ajouter
     */
    @Override
    public void addBook(Books book) {
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
    public void removeBook(Books book) {
        this.content.remove(book);
    }
    
    public void decrementBook(Books book)
    {
        if(this.content.get(book) != null)
        {
            this.content.put(book, (this.content.get(book) - 1));
        }
    }
}
