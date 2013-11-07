/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.BookOrder;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Cyril
 */
@Local
public interface BookOrderFacadeLocal {

    void create(BookOrder bookOrder);

    void edit(BookOrder bookOrder);

    void remove(BookOrder bookOrder);

    BookOrder find(Object id);

    List<BookOrder> findAll();

    List<BookOrder> findRange(int[] range);

    int count();
    
}
