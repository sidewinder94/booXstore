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
 * @author Cyril
 */
@Entity
public class Publishers implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String name;

    /**
     * Retourne le nom de l'éditeur
     * @return un String
     */
    public String getName() {
        return name;
    }

    /**
     * Modifie le nom de l'éditeur
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Retourne l'id de l'éditeur
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID de l'éditeur
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
        if (!(object instanceof Publishers)) {
            return false;
        }
        Publishers other = (Publishers) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.domain.Publisher[ id=" + id + " ]";
    }
    
}
