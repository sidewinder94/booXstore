/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;


import com.booXtore.domain.Users;
import com.booXtore.service.SellersFacadeLocal;
import com.booXtore.service.UsersFacadeLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

/**
 *
 * @author Antoine-Ali
 */
@Named(value = "AuthenticationBean")
@SessionScoped
public class AuthenticationBean implements Serializable {

    @EJB
    private UsersFacadeLocal uFL;
    
    @EJB
    private SellersFacadeLocal sFL;
    
    private String login;
    private String password;
    
    private String firstName;
    private String lastName;
    private String address;
    private String ZIP;
    private String city;
    private String mail;
    
    private Users user;
    private Boolean isConnected;
    
    /**
     * Creates a new instance of AuthenticationBean
     */
    public AuthenticationBean() {
    }
    
    public String logout()
    {
        //Déconnexion de la session
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "index.xhtml?faces-redirect=true";
    }
    
    public String userSignIn(){
        user.setAddress(address);
        user.setZIP(ZIP);
        user.setCity(city);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setLogin(login);
        user.setMail(mail);
        user.setPassword(password);
        
        uFL.register(user);
   /*     if(registered){
            
        }
        else{
            
        }*/
        return "index.xhtml?faces-redirect=true";        
    }
    
    public String userAuthentication() {
   //     Boolean exists = uFL.checkValidUser(login, password);
        
   /*     if (exists) {
            user = uFL.findUserByLogin(login);
            if(user != null)
            return "index.xhtml?faces-redirect=true";
            
        } else {
            //Sinon afficher une erreur
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Mauvais Login et/ou Mot de passe"));
            return null;
        }*/
        
        user = uFL.checkValidUser1(login, password);
        
        
        if (user != null) {
            firstName = user.getFirstName();
            lastName = user.getLastName();
            address = user.getAddress();
            ZIP = user.getZIP();
            city = user.getCity();
            mail = user.getMail();
            isConnected = true;
            return "index.xhtml?faces-redirect=true";
            
        } else {
            //Sinon afficher une erreur
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Mauvais Login et/ou Mot de passe"));
            return null;
        }
        
        
    }

    public Boolean getIsConnected() {
        return isConnected;
    }

    public void setIsConnected(Boolean isConnected) {
        this.isConnected = isConnected;
    }
    
    

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getZIP() {
        return ZIP;
    }

    public void setZIP(String ZIP) {
        this.ZIP = ZIP;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    
    
    
    

    
    
    
    
    
    
}
