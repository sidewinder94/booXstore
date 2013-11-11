/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.BookOrders;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Classe regroupant les méthodes spécifique pour l'accès à l'entité <strong>BookOrders</strong>
 * @author Antoine-Ali
 */
@Stateless
public class BookOrdersFacade extends AbstractFacade<BookOrders> implements BookOrdersFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookOrdersFacade() {
        super(BookOrders.class);
    }
    
}
