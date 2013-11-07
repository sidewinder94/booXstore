/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Authors;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface AuthorsFacadeLocal {

    void create(Authors authors);

    void edit(Authors authors);

    void remove(Authors authors);

    Authors find(Object id);

    List<Authors> findAll();

    List<Authors> findRange(int[] range);

    int count();
    
}
