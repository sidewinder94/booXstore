/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Publishers;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class PublishersFacade extends AbstractFacade<Publishers> implements PublishersFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PublishersFacade() {
        super(Publishers.class);
    }
    
}
