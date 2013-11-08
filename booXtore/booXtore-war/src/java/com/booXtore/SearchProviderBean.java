/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;

/**
 *
 * @author Antoine-Ali
 */
@Named(value = "searchProviderBean")
@SessionScoped
public class SearchProviderBean implements Serializable {

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
    }

    public List<Categories> getCategories() {
        List<Categories> result = cFL.findAll();

        return result;
    }

    public Categories getSearchCategory() {
        return this.searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }

    public String launchSearch() {
        return "catalog.xhtml?faces-redirect=true";

    }

    public String getSearch() {
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
}
