/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.StateOrders;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author brobert
 */
@Local
public interface StateOrdersFacadeLocal {

    void create(StateOrders stateOrders);

    void edit(StateOrders stateOrders);

    void remove(StateOrders stateOrders);

    StateOrders find(Object id);

    List<StateOrders> findAll();

    List<StateOrders> findRange(int[] range);

    int count();
    
}
