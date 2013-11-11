/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant 
 * les méthodes spécifique pour l'accès à l'entité <strong>Books</strong>
 * @author Antoine-Ali
 */
@Local
public interface BooksFacadeLocal {

    /**
     * Peremt de créer une entité
     * @param entity l'entité à créer
     */
    void create(Books books);

    /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    void edit(Books books);

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    void remove(Books books);

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    Books find(Object id);

    /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return Une liste des entités
     */
    List<Books> findAll();

    /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<Books> findRange(int[] range);

    /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    int count();

    /**
     * Retourne une liste de livre triés par nom
     * @param pattern Le pattern à rechercher dans le titrre des livres
     * @return Une liste de livre contenant le pattern à rechercher
     */
    List<Books> getBooksByName(String pattern);

    /**
     * Retourne un liste de livre font le titre contient un pattern donné filtré par catégorie
     * @param pattern Le pattern permettant de sélectionner les livres
     * @param category La catégorie à laquelle les livres doivent appartenir
     * @return La liste des livres correspondants
     */
    List<Books> getBooksByNameAndCategory(String pattern, Categories category);

    /**
     * Retourne une liste de livres appartenant à une catégorie
     * @param category la catégorie à laquelle les livres doivent appartenir
     * @return Retourne un liste de tous les livres appartenant à la catégorie
     */
    List<Books> getBooksByCategory(Categories category);
    
}
