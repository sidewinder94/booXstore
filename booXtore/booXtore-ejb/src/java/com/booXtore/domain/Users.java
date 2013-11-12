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
public class Users implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
         
    private String firstName;
    private String lastName;  
    private String mail;    
    private String address;    
    private String ZIP;    
    private String city;    
    private String login;    
    private String password;   

    @OneToMany(mappedBy = "users")
    private List<Orders> orders;

    /**
     * Constructeur par défaut de Users
     */
    public Users() {
    }

    /**
     * Retourne le liste des commandes d'un client
     * @return une liste de Orders
     */
    public List<Orders> getOrders() {
        return orders;
    }    
    
    /**
     * Modifie la liste de commandes du client
     * @param orders
     */
    public void setOrders(List<Orders> orders) {
        this.orders = orders;
    }
    
    /**
     * Retourne le prénom du client
     * @return un String
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Modifie le prénom du client
     * @param firtName
     */
    public void setFirstName(String firtName) {
        this.firstName = firtName;
    }

    /**
     * Retourne le nom de famille du client
     * @return un String
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Modifie le nom de famille du client
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Retourne le mail du client
     * @return un String
     */
    public String getMail() {
        return mail;
    }

    /**
     * Modifie le mail du client
     * @param mail
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * Retourne l'adresse du client
     * @return un String
     */
    public String getAddress() {
        return address;
    }

    /**
     * Modifie l'adresse du client
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * Retourne le code postal du client
     * @return un String
     */
    public String getZIP() {
        return ZIP;
    }

    /**
     * Modifie le code postal du client
     * @param ZIP
     */
    public void setZIP(String ZIP) {
        this.ZIP = ZIP;
    }

    /**
     * Retourne la ville du client
     * @return un String
     */
    public String getCity() {
        return city;
    }

    /**
     * Modifie la ville du client
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * Retourne le login du client
     * @return un String
     */
    public String getLogin() {
        return login;
    }

    /**
     * Modifie le login du client
     * @param login
     */
    public void setLogin(String login) {
        this.login = login;
    }

    /**
     * Retourne le password du client
     * @return un String
     */
    public String getPassword() {
        return password;
    }

    /**
     * Modifie le password du client
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Retourne l'ID du client
     * @return un Integer
     */
    public Integer getId() {
        return id;
    }

    /**
     * Modifie l'ID du client
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
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.domain.User[ id=" + id + " ]";
    }
    
}
