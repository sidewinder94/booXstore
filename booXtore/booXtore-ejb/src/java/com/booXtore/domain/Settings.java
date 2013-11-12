/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Antoine-Ali
 */
@Entity
public class Settings implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer articlesPerPage;

    /**
     * Retourne le nombre d'articles par page
     * @return un Integer
     */
    public Integer getArticlesPerPage() {
        return articlesPerPage;
    }

    /**
     * Modifie le nombre d'articles par page
     * @param articlesPerPage
     */
    public void setArticlesPerPage(Integer articlesPerPage) {
        this.articlesPerPage = articlesPerPage;
    }
    
    
    /**
     * Retourne L'ID de l'enregistrement de setting
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID de l'enregistrement de setting
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Settings)) {
            return false;
        }
        Settings other = (Settings) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Settings[ id=" + id + " ]";
    }
    
}
