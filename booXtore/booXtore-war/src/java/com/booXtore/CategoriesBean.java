/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Categories;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ManagedBean;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.faces.context.FacesContext;

/**
 *
 * @author brobert
 */
@Named(value = "categoriesBean")
@Dependent
public class CategoriesBean {

    @EJB
    private BooksFacadeLocal bFL;
    
    @EJB
    private CategoriesFacadeLocal cFL;
    
    /**
     * Retourne la liste de toutes les catégories
     * @return une liste de Categories
     */
    public List<Categories> getCategories()
    {
        return cFL.findAll();
    }
    
    
}
