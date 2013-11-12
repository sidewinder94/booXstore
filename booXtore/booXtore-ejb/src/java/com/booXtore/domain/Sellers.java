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
public class Sellers implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String login;
    
    private String password;

    /**
     * Retourne le password du Seller
     * @return un String
     */
    public String getPassword() {
        return password;
    }

    /**
     * Modifie le password du Seller
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Retourne le login du Seller
     * @return un String
     */
    public String getLogin() {
        return login;
    }

    /**
     * Modifie le login du Seller
     * @param login
     */
    public void setLogin(String login) {
        this.login = login;
    }
    
    /**
     * Retourne l'ID du seller
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID du seller
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
        if (!(object instanceof Sellers)) {
            return false;
        }
        Sellers other = (Sellers) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Seller[ id=" + id + " ]";
    }
    
}
