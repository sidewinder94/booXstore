/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class BooksFacade extends AbstractFacade<Books> implements BooksFacadeLocal {

    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BooksFacade() {
        super(Books.class);
    }

    @Override
    public List<Books> getBooksByName(String pattern) {
        TypedQuery<Books> query = em.createNamedQuery("findBooksByName", Books.class);
        query.setParameter("title", pattern);
        return query.getResultList();
    }

    @Override
    public List<Books> getBooksByNameAndCatogory(String pattern, Categories category) {
        TypedQuery<Books> query = em.createQuery("findBooksByNameAndCategory", Books.class);
        query.setParameter("title", pattern);
        query.setParameter("category", category);
        return query.getResultList();
    }

    @Override
    public List<Books> getBooksByCategory(Categories cateogry) {
        TypedQuery<Books> query = em.createNamedQuery("findBooksByName", Books.class);
        query.setParameter("category", cateogry);
        return query.getResultList();
    }
}
