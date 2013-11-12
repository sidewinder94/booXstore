/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;

/**
 *
 * @author Antoine-Ali
 */

@Entity
@NamedQueries({
    @NamedQuery(name = "findOrdersByUserId",
                query = "SELECT o FROM Orders o WHERE o.users = :user"),
    @NamedQuery(name = "findOrdersButState",
            query = "SELECT o FROM Orders o WHERE o.states NOT LIKE :state")
})

public class Orders implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    private Users users;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date orderDate;
    
    @ManyToOne
    private StateOrders states;
    
    @OneToMany(mappedBy = "orderId")
    private List<BookOrders> bookOrders;
    
    private Float totalPrice;

    /**
     * 
     * @return une Liste de BookOrders
     */
    public List<BookOrders> getBookOrders() {
        return bookOrders;
    }

    /**
     * Modifie une liste de BookOrders
     * @param bookOrders
     */
    public void setBookOrders(List<BookOrders> bookOrders) {
        this.bookOrders = bookOrders;
    }

    /**
     *  Retourne l'état de la commande
     * @return un StateOrders
     */
    public StateOrders getStates() {
        return states;
    }

    /**
     * Modifie l'état de la commande
     * @param states un état
     */
    public void setStates(StateOrders states) {
        this.states = states;
    }
    
    

    /**
     * Retourne le client de la commande
     * @return un Users
     */
    public Users getUsers() {
        return users;
    }

    /**
     * Modifie le client de la commande
     * @param users
     */
    public void setUsers(Users users) {
        this.users = users;
    }

    /**
     * Retourne la date de la commande
     * @return une Date
     */
    public Date getOrderDate() {
        return orderDate;
    }

    /**
     * Modifie la date de la commande
     * @param orderDate
     */
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    /**
     * Retoune le prix total de la commande
     * @return un Float
     */
    public Float getTotalPrice() {
        return totalPrice;
    }

    /**
     * Modifie le prix total de la commande
     * @param totalPrice
     */
    public void setTotalPrice(Float totalPrice) {
        this.totalPrice = totalPrice;
    }
        
    /**
     * Retourne l'ID de la commande
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID de la commande
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
        if (!(object instanceof Orders)) {
            return false;
        }
        Orders other = (Orders) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Orders[ id=" + id + " ]";
    }


    
}
