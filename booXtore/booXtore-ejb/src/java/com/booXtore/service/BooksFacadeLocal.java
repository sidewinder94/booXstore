/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
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

    List<Books> getBooksByName(String pattern);

    List<Books> getBooksByNameAndCatogory(String pattern, Categories category);

    List<Books> getBooksByCategory(Categories cateogry);
    
}
