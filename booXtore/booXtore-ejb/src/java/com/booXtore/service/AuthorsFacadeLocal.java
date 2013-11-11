/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Authors;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant 
 * les méthodes spécifique pour l'accès à l'entité <strong>Authors</strong>
 * @author Antoine-Ali
 */
@Local
public interface AuthorsFacadeLocal {

    /**
     * Peremt de créer une entité
     * @param entity l'entité à créer
     */
    void create(Authors authors);

    /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    void edit(Authors authors);

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    void remove(Authors authors);

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    Authors find(Object id);

    /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return Une liste des entités
     */
    List<Authors> findAll();
 
    /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<Authors> findRange(int[] range);

    /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    int count();
    
}
