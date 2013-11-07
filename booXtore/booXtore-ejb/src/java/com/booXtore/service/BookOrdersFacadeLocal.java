/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.BookOrders;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface BookOrdersFacadeLocal {

    void create(BookOrders bookOrders);

    void edit(BookOrders bookOrders);

    void remove(BookOrders bookOrders);

    BookOrders find(Object id);

    List<BookOrders> findAll();

    List<BookOrders> findRange(int[] range);

    int count();
    
}
