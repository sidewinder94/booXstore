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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Antoine-Ali
 */
@Entity
@Table(name = "books_orders")
public class BookOrders implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    private Books bookId;
    @ManyToOne
    private Orders orderId;
    private Integer quantity;

    /**
     * Retourne le livre concerné par la liaison BookOrder
     * @return un Books
     */
    public Books getBookId() {
        return bookId;
    }

    /**
     * Modifie le livre concerné par la liaison BookOrder
     * @param bookId
     */
    public void setBookId(Books bookId) {
        this.bookId = bookId;
    }

    /**
     * Retourne la commande concernée
     * @return
     */
    public Orders getOrderId() {
        return orderId;
    }

    /**
     * Modifie la commande concernée
     * @param orderId
     */
    public void setOrderId(Orders orderId) {
        this.orderId = orderId;
    }

    /**
     *
     * @return la quantité de livres concerné
     */
    public Integer getQuantity() {
        return quantity;
    }

    /**
     * Modifie la quantité de livres concerné
     * @param quantity
     */
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    /**
     * 
     * @return L'id de la liaison
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'id de la liaison
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
        if (!(object instanceof BookOrders)) {
            return false;
        }
        BookOrders other = (BookOrders) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.BookOrders[ id=" + id + " ]";
    }
}
