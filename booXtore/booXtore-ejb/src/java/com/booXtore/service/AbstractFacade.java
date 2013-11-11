/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import java.util.List;
import javax.persistence.EntityManager;

/**
 * Classe regroupant les méthodes communes à toutes les facades d'entités
 * @author Antoine-Ali
 */
public abstract class AbstractFacade<T> {
    private Class<T> entityClass;

    public AbstractFacade(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    protected abstract EntityManager getEntityManager();

    /**
     * Peremt de créer une entité
     * @param entity l'entité à créer
     */
    public void create(T entity) {
        getEntityManager().persist(entity);
    }

    /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    public void edit(T entity) {
        getEntityManager().merge(entity);
    }

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    public void remove(T entity) {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    public T find(Object id) {
        return getEntityManager().find(entityClass, id);
    }

    /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return UNe liste des entités
     */
    public List<T> findAll() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        return getEntityManager().createQuery(cq).getResultList();
    }

    /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return 
     */
    public List<T> findRange(int[] range) {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    public int count() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        javax.persistence.criteria.Root<T> rt = cq.from(entityClass);
        cq.select(getEntityManager().getCriteriaBuilder().count(rt));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }
    
}
