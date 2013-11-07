/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Order;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Cyril
 */
@Stateless
public class OrderFacade extends AbstractFacade<Order> implements OrderFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrderFacade() {
        super(Order.class);
    }
    
}
