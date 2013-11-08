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
 * @author Antoine-Ali
 */
@Named(value = "searchProviderBean")
@Dependent
public class SearchProviderBean {

    @EJB
    private BooksFacadeLocal bFL;
    
    @EJB
    private CategoriesFacadeLocal cFL;
    
    private Map<String, String[]> searchParams;

    
    private Categories searchCategory;

    
    /**
     * Creates a new instance of SearchProviderBean
     */
    public SearchProviderBean() {
        searchParams = FacesContext.getCurrentInstance().
                getExternalContext().
                getRequestParameterValuesMap();
    }
    
    public List<Categories> getCategories()
    {
        return cFL.findAll();
    }
    
    public Categories getSearchCategory() {
        return this.searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }
    
}
