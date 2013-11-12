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
import javax.persistence.Table;

/**
 *
 * @author Cyril
 */
@Entity
@Table(name = "state_orders")
public class StateOrders implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String name;
    
    @OneToMany(mappedBy = "states")
    private List<Orders> orders;

    /**
     * Retourne la liste des commandes liées à un état
     * @return une liste d'Orders
     */
    public List<Orders> getOrders() {
        return orders;
    }

    /**
     * Modifie une liste de commandes liées à un état
     * @param orders
     */
    public void setOrders(List<Orders> orders) {
        this.orders = orders;
    }
    
    

    /**
     * Retourne le nom d'un état de commande
     * @return un String
     */
    public String getName() {
        return name;
    }

    /**
     * Modifie le nom d'un état
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }
    
    

    /**
     * Retourne l'id d'un état de commande
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID d'un état de commande
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
        if (!(object instanceof StateOrders)) {
            return false;
        }
        StateOrders other = (StateOrders) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.StateOrder[ id=" + id + " ]";
    }
    
}
