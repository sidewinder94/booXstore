/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Settings;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Antoine-Ali
 */
@Stateless
public class SettingsFacade extends AbstractFacade<Settings> implements SettingsFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SettingsFacade() {
        super(Settings.class);
    }
    
}
