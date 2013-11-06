/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore.domain;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Cyril
 */
@Entity
@Table(name = "book_orders")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BookOrders.findAll", query = "SELECT b FROM BookOrders b"),
    @NamedQuery(name = "BookOrders.findById", query = "SELECT b FROM BookOrders b WHERE b.id = :id"),
    @NamedQuery(name = "BookOrders.findByQuantity", query = "SELECT b FROM BookOrders b WHERE b.quantity = :quantity")})
public class BookOrders implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id")
    private Integer id;
    @Column(name = "Quantity")
    private Integer quantity;
    @JoinColumn(name = "Id_Orders", referencedColumnName = "Id")
    @ManyToOne
    private Orders idOrders;
    @JoinColumn(name = "Id_Book", referencedColumnName = "Id")
    @ManyToOne
    private Book idBook;

    public BookOrders() {
    }

    public BookOrders(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Orders getIdOrders() {
        return idOrders;
    }

    public void setIdOrders(Orders idOrders) {
        this.idOrders = idOrders;
    }

    public Book getIdBook() {
        return idBook;
    }

    public void setIdBook(Book idBook) {
        this.idBook = idBook;
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
        return "com.booXstore.domain.BookOrders[ id=" + id + " ]";
    }
    
}
