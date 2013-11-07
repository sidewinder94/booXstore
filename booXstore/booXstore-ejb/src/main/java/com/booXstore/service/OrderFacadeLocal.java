/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Order;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Cyril
 */
@Local
public interface OrderFacadeLocal {

    void create(Order orders);

    void edit(Order orders);

    void remove(Order orders);

    Order find(Object id);

    List<Order> findAll();

    List<Order> findRange(int[] range);

    int count();
    
}
