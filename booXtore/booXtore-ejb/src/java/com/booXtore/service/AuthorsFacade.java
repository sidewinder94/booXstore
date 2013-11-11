/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Authors;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Classe regroupant les méthodes spécifique pour l'accès à l'entité <strong>Authors</strong>
 * @author Antoine-Ali
 */
@Stateless
public class AuthorsFacade extends AbstractFacade<Authors> implements AuthorsFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AuthorsFacade() {
        super(Authors.class);
    }
    
}
