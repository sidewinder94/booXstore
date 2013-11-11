/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 * Classe regroupant les méthodes spécifique pour l'accès à l'entité <strong>Books</strong>
 * @author Antoine-Ali
 */
@Stateless
public class BooksFacade extends AbstractFacade<Books> implements BooksFacadeLocal {

    @PersistenceContext(unitName = "store-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BooksFacade() {
        super(Books.class);
    }

    /**
     * Retourne une liste de livre triés par nom
     * @param pattern Le pattern à rechercher dans le titrre des livres
     * @return Une liste de livre contenant le pattern à rechercher
     */
    @Override
    public List<Books> getBooksByName(String pattern) {
        TypedQuery<Books> query = em.createNamedQuery("findBooksByName", Books.class);
        query.setParameter("title", "%" + pattern + "%");
        return query.getResultList();
    }

     /**
     * Retourne un liste de livre font le titre contient un pattern donné filtré par catégorie
     * @param pattern Le pattern permettant de sélectionner les livres
     * @param category La catégorie à laquelle les livres doivent appartenir
     * @return La liste des livres correspondants
     */
    @Override
    public List<Books> getBooksByNameAndCategory(String pattern, Categories category) {
        TypedQuery<Books> query = em.createNamedQuery("findBooksByNameAndCategory", Books.class);
        query.setParameter("title", "%" + pattern + "%");
        query.setParameter("category", category);
        return query.getResultList();
    }

    /**
     * Retourne une liste de livres appartenant à une catégorie
     * @param category la catégorie à laquelle les livres doivent appartenir
     * @return Retourne un liste de tous les livres appartenant à la catégorie
     */
    @Override
    public List<Books> getBooksByCategory(Categories category) {
        TypedQuery<Books> query = em.createNamedQuery("findBooksByCategory", Books.class);
        query.setParameter("category", category);
        return query.getResultList();
    }
}
