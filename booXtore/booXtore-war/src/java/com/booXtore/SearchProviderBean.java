/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author Antoine-Ali
 */
@ManagedBean
@ViewScoped
public class SearchProviderBean implements Serializable {

    @EJB
    private BooksFacadeLocal bFL;
    @EJB
    private CategoriesFacadeLocal cFL;
    
    private String search;
    private Categories searchCategory;

    /**
     * Creates a new instance of SearchProviderBean
     */
    public SearchProviderBean() {
    }

    public List<Categories> getCategories() {
        List<Categories> result = cFL.findAll();

        return result;
    }

    public Categories getSearchCategory() {
        FacesContext fc = FacesContext.getCurrentInstance();
        for(Categories cat : this.cFL.findAll())
        {
            if(cat.getName().equalsIgnoreCase(getParam(fc, "category")))
            {
                this.searchCategory = cat;
            }
        }
        return this.searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }

    public String launchSearch() {
        return "catalog.xhtml?faces-redirect=true";

    }

    public String getSearch() {
        FacesContext fc = FacesContext.getCurrentInstance();
        this.search = getParam(fc , "search");
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public Categories getDefaultCategorySearch()
    {
        Categories def = new Categories();
        def.setName("Toutes Catégories");
        return def;
    }
    
    public List<Books> getSearchResults() {
        return null;
    }
    
    public List<Books> getAllBooks()
    {
        return this.bFL.findAll();
    }
    
    private String getParam(FacesContext fc, String paramName)
    {
        return fc.getExternalContext().getRequestParameterMap().get(paramName);
    }
    
}
