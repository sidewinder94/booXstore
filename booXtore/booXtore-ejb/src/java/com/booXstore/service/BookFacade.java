/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Book;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

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
