/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.States;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Classe regroupant les méthodes spécifique pour l'accès à l'entité <strong></strong>
 * @author Cyril
 */
@Stateless
public class StatesFacade extends AbstractFacade<States> implements StatesFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StatesFacade() {
        super(States.class);
    }
    
}
