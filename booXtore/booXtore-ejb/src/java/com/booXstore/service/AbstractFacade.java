/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import java.util.List;
import javax.persistence.EntityManager;

/**
 *
 * @author Cyril
 */
public abstract class AbstractFacade<T> {
    private Class<T> entityClass;

    public AbstractFacade(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    protected abstract EntityManager getEntityManager();
    
    /**
     * Création d'une entité dans la base
     * Peut retourner une exception si les contraintes de Clés étrangères ne sont pas respectées
     * @param entity L'entité à créer en base
     */
    public void create(T entity) {
        getEntityManager().persist(entity);
    }

    /**
     * Enregistre les modifications d'une entité dans la base
     * Peut retourner une exception si les contraintes de Clés étrangères ne sont pas respectées
     * @param entity L'entité à enregistrer en base
     */
    public void edit(T entity) {
        getEntityManager().merge(entity);
    }
    
    /**
     * Supprime une entité de la base de données
     * Peut retourner une exception si les contraintes de Clés étrangères ne sont pas respectées
     * @param entity L'entité à supprimer de la base de données
     */
    public void remove(T entity) {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    /**
     * Obtient une entité selon son Id
     * @param id L'id de l'entité à récupérer
     * @return retourne l'entité correspondant à l'id fourni ou null si rien
     */
    public T find(Object id) {
        return getEntityManager().find(entityClass, id);
    }

    /**
     * Retourne l'intégralité des entités
     * @return Liste contenant toutes les entités
     */
    public List<T> findAll() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        return getEntityManager().createQuery(cq).getResultList();
    }
    /**
     * Obtient les X premieres entités
     * @param range tableau de minimum 2 valeurs, la seconde doit être plus grande que la première
     * tout tableau plus grand que deux cellules ne verra que ses deux premières cellules de lues
     * @return La liste des entités correspondantes
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
     * Compte le nombre total d'entités présentes
     * @return le nombre d'entités
     */
    public int count() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        javax.persistence.criteria.Root<T> rt = cq.from(entityClass);
        cq.select(getEntityManager().getCriteriaBuilder().count(rt));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }
    
}
