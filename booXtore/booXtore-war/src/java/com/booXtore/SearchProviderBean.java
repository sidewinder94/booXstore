/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Categories;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import java.awt.event.ActionEvent;
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
    
    private Map<String, String> searchParams;

    private String search;
    
    private Categories searchCategory;

    
    /**
     * Creates a new instance of SearchProviderBean
     */
    public SearchProviderBean() {
        searchParams = FacesContext.getCurrentInstance().
                getExternalContext().
                getRequestParameterMap();
        search = searchParams.get("search");
    }
    
    public List<Categories> getCategories()
    {
        List<Categories> result = cFL.findAll();
        
        System.out.println(result);
        return result;
    }
    
    public Categories getSearchCategory() {
        return this.searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }
    
    public String launchSearch()
    {
        return "/catalog.xhtml?search="+ search;
        
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }
    
    
}