/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Users;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> implements UsersFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }
    
}
