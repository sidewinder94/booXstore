/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Sellers;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class SellersFacade extends AbstractFacade<Sellers> implements SellersFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SellersFacade() {
        super(Sellers.class);
    }
    
    @Override
    public Sellers checkValidSeller(String login, String password){
        String stringQuery = "SELECT s FROM Sellers s WHERE s.login = :login AND s.password = :password";
        TypedQuery<Sellers> query = em.createQuery(stringQuery, Sellers.class);
        query.setParameter("login", login);
        query.setParameter("password", password);
        
        try {
            if (query.getSingleResult() != null) {
                return query.getSingleResult();
            }
        } catch (NoResultException e) {
            
        }        
        return null;
        
    }
    
}
