/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Users;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant 
 * les méthodes spécifique pour l'accès à l'entité <strong>Users</strong>
 * @author Antoine-Ali
 */
@Local
public interface UsersFacadeLocal {

     /**
     * Peremt de créer une entité
     * @param entity l'entité à créer
     */
    void create(Users user);

   /**
     * Permet de modifier une entité
     * @param entity l'entiter à enregistrer
     */
    void edit(Users user);

    /**
     * Permet de supprimer une entité
     * @param entity l'entité à supprimer
     */
    void remove(Users user);

    /**
     * Permet de trouver une entité sur la base de son ID
     * @param id l'ID de la classe à trouver
     * @return la classe correspondante à l'id
     */
    Users find(Object id);

    /**
     * Retourne une liste de toutes les entités d'un type donné
     * @return Une liste des entités
     */
    List<Users> findAll();

    /**
     * Retourne une liste des X premières entités
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<Users> findRange(int[] range);

    /**
     * Retourne le nombre total d'entités
     * @return En entier contenant le nombre d'entités
     */
    int count();

    /**
     * Retourne true or false si le login existe déjà
     * @param login
     * @return un Booleen
     */
    Boolean checkValidLogin(String login);

    /**
     * Retourne un client par rapport a son id
     * @param id l'id du client
     * @return un entity Users
     */
    public Users findUserById(Integer id);

    /**
     * Retourne un client par rapport a son login
     * @param login le login du client
     * @return un entity Users
     */
    public Users findUserByLogin(String login);

    /**
     * Retourne un client par rapport a son login/password
     * @param login le login du client
     * @param password le password du client
     * @return un entity Users
     */
    public Users checkValidUser(String login, String password);
    
}
