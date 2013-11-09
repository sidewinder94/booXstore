/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.States;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Cyril
 */
@Local
public interface StatesFacadeLocal {

    void create(States state);

    void edit(States state);

    void remove(States state);

    States find(Object id);

    List<States> findAll();

    List<States> findRange(int[] range);

    int count();
    
}
