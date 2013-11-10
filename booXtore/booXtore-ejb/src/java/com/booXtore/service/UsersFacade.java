/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Users;
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

    /**
     *
     * @param login
     * @param password
     * @return true if user exists, else false
     */
    @Override
    public Boolean checkValidLogin(String login) {
        String stringQuery = "SELECT u FROM Users u WHERE u.login = :login";
        TypedQuery<Users> query = em.createQuery(stringQuery, Users.class);
        query.setParameter("login", login);
        Boolean exists = false;
        
        try {
            if (query.getSingleResult() != null) {
                exists = true;
            }
        } catch (NoResultException e) {
            
        }        
        return exists;
    }
    
    /**
     *
     * @param login
     * @param password
     * @return user if exist or null
     */
    @Override
    public Users checkValidUser(String login, String password) {
        String stringQuery = "SELECT u FROM Users u WHERE u.login = :login AND u.password = :password";
        TypedQuery<Users> query = em.createQuery(stringQuery, Users.class);
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
    
    /**
     *
     * @param user
     * INSERT the new User
     */
    @Override
    public void create(Users user){
        em.persist(user);
    }
    
    /**
     *
     * @param user
     * UPDATE the current User
     */
    @Override
    public void edit(Users user){
        em.merge(user);
    }
    
    @Override
    public Users findUserById(Integer id){
        String stringQuery = "SELECT u FROM Users u WHERE u.id = :id";
        TypedQuery<Users> query = em.createQuery(stringQuery, Users.class);
        query.setParameter("id", id);
        
        try {
            if (query.getSingleResult() != null) {
                return query.getSingleResult();
            }
        } catch (NoResultException e) {
            
        }
        
        return null;
    }
    
    /**
     *
     * @param login
     * @return user by login or null if not exist
     */
    @Override
    public Users findUserByLogin(String login){
        String stringQuery = "SELECT u FROM Users u WHERE u.login = :login";
        TypedQuery<Users> query = em.createQuery(stringQuery, Users.class);
        query.setParameter("login", login);
        
        try {
            if (query.getSingleResult() != null) {
                return query.getSingleResult();
            }
        } catch (NoResultException e) {
            
        }
        
        return null;
    }
    
    
    
}
