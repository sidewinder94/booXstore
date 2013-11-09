/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.service.SellersFacadeLocal;
import com.booXtore.service.UsersFacadeLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;

/**
 *
 * @author Cyril
 */
@Named(value = "AccountBean")
@SessionScoped
public class AccountBean implements Serializable {

    
    @EJB
    private UsersFacadeLocal uFL;
    
    @EJB
    private SellersFacadeLocal sFL;
    
    private String lastName;    
    private String mail;    
    private String Address;    
    private String ZIP;    
    private String City;    
    private String Login;    
    private String Password;    
    private String firstName; 
    
    private Boolean isConnected;
    
    /**
     * Creates a new instance of AccountBean
     */
    public AccountBean() {
    }

    public Boolean getIsConnected() {
        return isConnected;
    }

    public void setIsConnected(Boolean isConnected) {
        this.isConnected = isConnected;
    }
    
    

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getZIP() {
        return ZIP;
    }

    public void setZIP(String ZIP) {
        this.ZIP = ZIP;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    
    
}
