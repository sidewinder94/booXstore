/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.StateOrders;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author brobert
 */
@Local
public interface StateOrdersFacadeLocal {

    /**
     * Permet de créer une entité
     * @param entity l'entité à créer
     */
    void create(StateOrders stateOrders);

    /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    void edit(StateOrders stateOrders);

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    void remove(StateOrders stateOrders);

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    StateOrders find(Object id);

     /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return Une liste des entités
     */
    List<StateOrders> findAll();

   /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<StateOrders> findRange(int[] range);

    /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    int count();
    
}
