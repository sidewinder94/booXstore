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
public class Categories implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    /**
     *
     * @return un String contenant le nom de la catégorie
     */
    public String getName() {
        return name;
    }

    /**
     * Modifie le nom de la catégorie
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }
    
    
    /**
     *
     * @return un Integer contenant l'ID de la catégorie
     */
    public Integer getId() {
        return id;
    }

    
    
    /**
     * Modifie l'ID de la catégorie
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
        if (!(object instanceof Categories)) {
            return false;
        }
        Categories other = (Categories) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Category[ id=" + id + " ]";
    }
    
}
