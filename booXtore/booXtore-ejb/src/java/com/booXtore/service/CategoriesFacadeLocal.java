/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Categories;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant 
 * les méthodes spécifique pour l'accès à l'entité <strong>Categories</strong>
 * @author Antoine-Ali
 */
@Local
public interface CategoriesFacadeLocal {

    /**
     * Peremt de créer une entité
     * @param entity l'entité à créer
     */
    void create(Categories categories);

    /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    void edit(Categories categories);

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    void remove(Categories categories);

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    Categories find(Object id);

    /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return Une liste des entités
     */
    List<Categories> findAll();

    /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<Categories> findRange(int[] range);

     /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    int count();
    
}
