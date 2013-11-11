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

    
    /**
     * Exécute une recherche.
     * @return l'url de notre recherche.
     */
    public String launchSearch()
    {
        return "catalog.xhtml?faces-redirect=true&search=" + search;
    }
    
    /**
     * Retourne le terme de la recherche.
     * @return le terme de la recherche.
     */
    public String getSearch() {
        return search;
    }

    /**
     * Définit le terme de recherche, en le décodant auparavant pour reconnaître les caractères spéciaux.
     * @param search Le terme de recherche.
     */
    public void setSearch(String search) {
        this.search = StringUtilities.decode(search);
    }

    
}
