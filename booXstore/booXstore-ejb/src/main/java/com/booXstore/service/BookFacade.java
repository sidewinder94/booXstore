/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Book;
import com.booXstore.domain.BookOrders;
import com.booXstore.domain.Orders;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.eclipse.persistence.internal.queries.OrderedListContainerPolicy;

/**
 *
 * @author Cyril
 */
@Stateless
public class BookFacade extends AbstractFacade<Book> implements BookFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookFacade() {
        super(Book.class);
    }

    @Override
    public List<Book> getBestSellers() {
        
        TypedQuery<Book> query = em.createNamedQuery("findBestSellers", 
                                                     Book.class);
        query.setMaxResults(10);
        query.setFirstResult(0);
        return query.getResultList();
        
    }
    

    
}
