/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Sellers;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant
 * les méthodes spécifique pour l'accès à l'entité <strong>Sellers</strong>
 *
 * @author Antoine-Ali
 */
@Local
public interface SellersFacadeLocal {

    /**
     * Crée une entité Seller
     *
     * @param sellers
     */
    void create(Sellers sellers);

    /**
     * Modifie une entité Seller
     *
     * @param sellers
     */
    void edit(Sellers sellers);

    /**
     * Supprime une entité Seller
     *
     * @param sellers
     */
    void remove(Sellers sellers);

    /**
     * Return un Seller par rapport à son ID
     *
     * @param id
     * @return un Seller
     */
    Sellers find(Object id);

    /**
     * Return l'intégralité des Sellers
     *
     * @return une liste de Seller
     */
    List<Sellers> findAll();

    /**
     * Retourne une liste des X premières entités
     *
     * @param range le nombre d'entités à retourner
     * @return La liste contenant les X premières entités
     */
    List<Sellers> findRange(int[] range);

    /**
     * Retourne le nombre total d'entités
     *
     * @return En entier contenant le nombre d'entités
     */
    int count();

    /**
     * Return un Seller par rapport a son login/password
     *
     * @param login le login du Seller
     * @param password le password du Seller
     * @return un Seller s'il existe sinon null
     */
    public Sellers checkValidSeller(String login, String password);
}
