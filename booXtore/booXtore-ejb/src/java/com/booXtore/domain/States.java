/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.domain;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author Cyril
 */
@Entity
public class States implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String name;
    
    @OneToMany(mappedBy = "states")
    private List<Books> books;

    /**
     * Retourne la liste des livres de l'état en question
     * @return
     */
    public List<Books> getBooks() {
        return books;
    }

    /**
     * Modifie la liste des livres de l'état
     * @param books
     */
    public void setBooks(List<Books> books) {
        this.books = books;
    }
    
    

    /**
     * Retourne le nom de l'état
     * @return un String
     */
    public String getName() {
        return name;
    }

    /**
     * Modifie le nom de l'état
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }
    
    

    /**
     * Retourne l'ID de l'état
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID de l'état
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
        if (!(object instanceof States)) {
            return false;
        }
        States other = (States) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.State[ id=" + id + " ]";
    }
    
}
