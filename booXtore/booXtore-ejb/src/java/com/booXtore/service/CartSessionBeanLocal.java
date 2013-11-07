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

    void addBook(Books book);

    void resetCart();

    void removeBook(Books book);
    
}
