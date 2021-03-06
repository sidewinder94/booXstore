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
import javax.persistence.ManyToMany;

/**
 *
 * @author Antoine-Ali
 */
@Entity
public class Authors implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    
    @ManyToMany
    private List<Books> books;

    /**
     * Retourne la liste de Books liés à l'auteur
     * @return une liste de Book
     */
    public List<Books> getBooks() {
        return books;
    }

    /**
     * Lie la liste de Books a l'auteur
     * @param books
     */
    public void setBooks(List<Books> books) {
        this.books = books;
    }
    

    /**
     *
     * @return le nom de l'auteur
     */
    public String getName() {
        return name;
    }

    /**
     * modifie le nom de l'auteur
     * @param name 
     */
    public void setName(String name) {
        this.name = name;
    }
    
    /**
     * Retourne l'ID de l'auteur
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID de l'auteur
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
        if (!(object instanceof Authors)) {
            return false;
        }
        Authors other = (Authors) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Author[ id=" + id + " ]";
    }
    
}
