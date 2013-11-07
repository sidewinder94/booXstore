/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface BooksFacadeLocal {

    void create(Books books);

    void edit(Books books);

    void remove(Books books);

    Books find(Object id);

    List<Books> findAll();

    List<Books> findRange(int[] range);

    int count();
    
}
