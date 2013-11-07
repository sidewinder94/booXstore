/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Publishers;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface PublishersFacadeLocal {

    void create(Publishers publishers);

    void edit(Publishers publishers);

    void remove(Publishers publishers);

    Publishers find(Object id);

    List<Publishers> findAll();

    List<Publishers> findRange(int[] range);

    int count();
    
}
