/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Sellers;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface SellersFacadeLocal {

    void create(Sellers sellers);

    void edit(Sellers sellers);

    void remove(Sellers sellers);

    Sellers find(Object id);

    List<Sellers> findAll();

    List<Sellers> findRange(int[] range);

    int count();
    
}
