/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Orders;
import com.booXtore.domain.StateOrders;
import com.booXtore.domain.States;
import com.booXtore.domain.Users;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 * Classe regroupant les méthodes spécifique pour l'accès à l'entité <strong>Orders</strong>
 * @author Antoine-Ali
 */
@Stateless
public class OrdersFacade extends AbstractFacade<Orders> implements OrdersFacadeLocal {
    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrdersFacade() {
        super(Orders.class);
    }
    
    @Override
    public List<Orders> getOrdersByUser(Users user){
        String stringQuery = "SELECT o FROM Orders o WHERE o.id = :id";
        TypedQuery<Orders> query = em.createQuery(stringQuery, Orders.class);
        query.setParameter("id", user.getId());
        
        return query.getResultList();
    }

    @Override
    public List<Orders> findAllOrdersButState(StateOrders state) {
        TypedQuery<Orders> query = em.createNamedQuery("findOrdersButState", Orders.class);
        query.setParameter("state", state);
        return query.getResultList();
    }
    
    
}
