/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Book;
import java.util.HashMap;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface CartSessionBeanLocal {

    HashMap<Book, Integer> getContent();

    void addBook(Book book);

    void resetCart();

    void removeBook(Book book);
    
}
