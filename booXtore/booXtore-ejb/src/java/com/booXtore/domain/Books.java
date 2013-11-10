/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Antoine-Ali
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "findBooksByName",
                query = "SELECT b FROM Books b WHERE b.title LIKE '%:title%'"),
    @NamedQuery(name = "findBooksByNameAndCategory",
                query = "SELECT b FROM Books b WHERE b.category = :category AND b.title LIKE '%:title%'"),
    @NamedQuery(name = "findBooksByCategory",
                query = "SELECT b FROM Books b WHERE b.category = :category")
}
        )
public class Books implements Serializable {
   
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String title;
    
    @OneToOne
    private Categories category;
    
    private Integer supply;
    
    private Integer threshold;
    
    private String summary;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date releaseDate;
    
    private Float price;
    
    private String imageName;
    
    @ManyToOne
    private States states;
    
    
    @OneToOne
    private Publishers publisher;
    
    @OneToMany(mappedBy = "bookId")
    private List<BookOrders> bookOrders;
    
    @ManyToMany(mappedBy = "books")
    private List<Authors> authors;

    public States getStates() {
        return states;
    }

    public void setStates(States states) {
        this.states = states;
    }
    
    

    public List<BookOrders> getBookOrders() {
        return bookOrders;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    
    
    public void setBookOrders(List<BookOrders> bookOrders) {
        this.bookOrders = bookOrders;
    }

    public List<Authors> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Authors> authors) {
        this.authors = authors;
    }
    
    

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Categories getCategory() {
        return category;
    }

    public void setCategory(Categories category) {
        this.category = category;
    }

    public Integer getSupply() {
        return supply;
    }

    public void setSupply(Integer supply) {
        this.supply = supply;
    }

    public Integer getThreshold() {
        return threshold;
    }

    public void setThreshold(Integer threshold) {
        this.threshold = threshold;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Publishers getPublisher() {
        return publisher;
    }

    public void setPublisher(Publishers publisher) {
        this.publisher = publisher;
    }
    
    
    
    
    public Integer getId() {
        return id;
    }

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
        if (!(object instanceof Books)) {
            return false;
        }
        Books other = (Books) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.booXtore.domain.Books[ id=" + id + " ]";
    }
    
}
