/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Categories;
import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Antoine-Ali
 */
@ManagedBean
@ViewScoped
public class QuickSearchBean implements Serializable{
    
    private String search;
    private Categories searchCategory;
    
    /**
     * Creates a new instance of QuickSearchBean
     */
    public QuickSearchBean() {
    }

    
    public String launchSearch()
    {
        return "catalog.xhtml?faces-redirect=true&search=" + search;
    }
    
    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public Categories getSearchCategory() {
        return searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }
    
    
}
