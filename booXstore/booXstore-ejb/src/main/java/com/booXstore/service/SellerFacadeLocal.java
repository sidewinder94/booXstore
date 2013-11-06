/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.service;

import com.booXstore.domain.Seller;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface SellerFacadeLocal {

    void create(Seller seller);

    void edit(Seller seller);

    void remove(Seller seller);

    Seller find(Object id);

    List<Seller> findAll();

    List<Seller> findRange(int[] range);

    int count();
    
}
