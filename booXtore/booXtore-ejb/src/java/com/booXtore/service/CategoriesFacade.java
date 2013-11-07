/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Categories;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class CategoriesFacade extends AbstractFacade<Categories> implements CategoriesFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CategoriesFacade() {
        super(Categories.class);
    }
    
}
