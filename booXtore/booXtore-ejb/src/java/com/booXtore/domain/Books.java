/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
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
            query = "SELECT b FROM Books b WHERE b.title LIKE :title"),
    @NamedQuery(name = "findBooksByNameAndCategory",
            query = "SELECT b FROM Books b WHERE b.category = :category AND b.title LIKE :title"),
    @NamedQuery(name = "findBooksByCategory",
            query = "SELECT b FROM Books b WHERE b.category = :category"),
    @NamedQuery(name = "findTopTenBooks",
            query = "SELECT b FROM Books b JOIN b.bookOrders bo ON bo.bookId = b.id ORDER BY bo.quantity DESC"),
    @NamedQuery(name = "findUnderThresholdBooks",
            query = "SELECT b FROM Books b WHERE b.supply <= b.threshold")
})

public class Books implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;
    
    @OneToOne
    private Categories category;
    
    private Integer supply;
    
    private Integer threshold;
    
    @Lob 
    @Column(name="SUMMARY", length=2000)
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

    /**
     * Retourne l'état d'un livre
     * @return un States
     */
    public States getStates() {
        return states;
    }

    /**
     * Modifie l'état d'un livre
     * @param states
     */
    public void setStates(States states) {
        this.states = states;
    }
    
    

    /**
     * Retourne une liste de BookOrders d'un livre
     * @return une liste de BookOrders
     */
    public List<BookOrders> getBookOrders() {
        return bookOrders;
    }

    /**
     * Retourne le nom de l'image d'un livre
     * @return un String
     */
    public String getImageName() {
        return imageName;
    }

    /**
     * Modifie le nom de l'image d'un livre
     * @param imageName
     */
    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    
    
    /**
     * Modifie la liste de BookOrders d'un livre
     * @param bookOrders
     */
    public void setBookOrders(List<BookOrders> bookOrders) {
        this.bookOrders = bookOrders;
    }

    /**
     * Retourne la liste des auteurs d'un livre
     * @return une liste d'Authors
     */
    public List<Authors> getAuthors() {
        return authors;
    }

    /**
     * Modifie la liste des auteurs d'un livre
     * @param authors
     */
    public void setAuthors(List<Authors> authors) {
        this.authors = authors;
    }
    
    

    /**
     * Retourne le titre d'un livre
     * @return un String
     */
    public String getTitle() {
        return title;
    }

    /**
     * Modifie le titre d'un livre
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Retourne la catégorie d'un livre
     * @return un Categories
     */
    public Categories getCategory() {
        return category;
    }

    /**
     * Modifie la catégorie d'un livre
     * @param category
     */
    public void setCategory(Categories category) {
        this.category = category;
    }

    /**
     * Retourne le stock d'un livre
     * @return un Integer
     */
    public Integer getSupply() {
        return supply;
    }

    /**
     * Modifie le stock d'un livre
     * @param supply
     */
    public void setSupply(Integer supply) {
        this.supply = supply;
    }

    /**
     * Retourne le seuil d'approvisionnement d'un livre
     * @return un Integer
     */
    public Integer getThreshold() {
        return threshold;
    }

    /**
     * Modifie le seuil d'approvisionnement d'un livre
     * @param threshold
     */
    public void setThreshold(Integer threshold) {
        this.threshold = threshold;
    }

    /**
     * Retourne le résumé d'un livre
     * @return un String
     */
    public String getSummary() {
        return summary;
    }

    /**
     * Modifie le résumé d'un livre
     * @param summary
     */
    public void setSummary(String summary) {
        this.summary = summary;
    }

    /**
     * Retourne la date de sortie d'un livre
     * @return une Date
     */
    public Date getReleaseDate() {
        return releaseDate;
    }

    /**
     * Modifie la date de sortie d'un livre
     * @param releaseDate
     */
    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    /**
     * Retourne le prix d'un livre
     * @return un Float
     */
    public Float getPrice() {
        return price;
    }

    /**
     * Modifie le prix d'un livre
     * @param price
     */
    public void setPrice(Float price) {
        this.price = price;
    }

    /**
     * Retourne l'éditeur d'un livre
     * @return un Publishers
     */
    public Publishers getPublisher() {
        return publisher;
    }

    /**
     * Modifie l'éditeur d'un livre
     * @param publisher
     */
    public void setPublisher(Publishers publisher) {
        this.publisher = publisher;
    }
    
    
    
    
    /**
     * Retourne l'ID d'un livre
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID d'un livre
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
