/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.utilities.StringUtilities;
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
    
    private String search;;
    
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
        this.search = StringUtilities.decode(search);
    }

    
}
