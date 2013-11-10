/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;


import com.booXtore.domain.Sellers;
import com.booXtore.domain.Users;
import com.booXtore.service.SellersFacadeLocal;
import com.booXtore.service.UsersFacadeLocal;
import java.io.IOException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;
import javax.faces.application.ConfigurableNavigationHandler;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ComponentSystemEvent;

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
    
    private String newMail;
    private String newPassword;
    private String confirmPassword;
    
    private Sellers seller;
    
    
    /**
     * Creates a new instance of AuthenticationBean
     */
    public AuthenticationBean() {
    }
   
    
    public void changeInfo() throws IOException{
        
        user.setAddress(address);
        user.setCity(city);
        user.setZIP(ZIP);      
        
        uFL.edit(user);
        FacesContext.getCurrentInstance().addMessage("infoForm:infoButton", new FacesMessage("Vos informations personnelles ont été mises à jour"));
        //return "account.xhtml#credentials";
        /*
        ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
        ec.redirect("account.xhtml#credentials");*/
        
    }
    
    public String changePassword(){
        if(!newPassword.equals(confirmPassword)){
            FacesContext.getCurrentInstance().addMessage("passwordForm:newPassConfirm", new FacesMessage("Le mot de passe ne correspond pas"));
            return null;
        }
        else{
            //mise a jour du mot de passe
            user.setPassword(newPassword);
            uFL.edit(user);
            FacesContext.getCurrentInstance().addMessage("passwordForm:passwordButton", new FacesMessage("Votre mot de passe a été mis à jour"));
            return null;
        }
    }
    
    public String changeMail(){
        
        mail = newMail;
        newMail = null;
        user.setMail(mail);
        uFL.edit(user);
        FacesContext.getCurrentInstance().addMessage("mailForm:mailButton", new FacesMessage("Votre adresse mail a été mise à jour"));
        return null;
    }
    public String logout()
    {
        //Déconnexion de la session
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "index.xhtml?faces-redirect=true";
    }
    
    public String userSignIn(){
        
        if(uFL.checkValidLogin(login)){
            FacesContext.getCurrentInstance().addMessage("signinForm:newlogin", new FacesMessage("Ce nom d'utilisateur existe déjà"));
            return null;
        
        }else{
            user = new Users();
            user.setAddress(address);
            user.setZIP(ZIP);
            user.setCity(city);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setLogin(login);
            user.setMail(mail);
            user.setPassword(password);
            
            uFL.create(user);
            isConnected = true;
            return "index.xhtml?faces-redirect=true";     
        
        
        }
           
    }
    
    public void isUserConnected(ComponentSystemEvent event) {

        FacesContext fc = FacesContext.getCurrentInstance();

        if (user == null) {

            ConfigurableNavigationHandler nav = (ConfigurableNavigationHandler) fc.getApplication().getNavigationHandler();

            nav.performNavigation("authentication.xhtml?faces-redirect=true");
        }
    }
    
    public void isSellerConnected(ComponentSystemEvent event) {

        FacesContext fc = FacesContext.getCurrentInstance();

        if (seller == null) {

            ConfigurableNavigationHandler nav = (ConfigurableNavigationHandler) fc.getApplication().getNavigationHandler();

            nav.performNavigation("index.xhtml?faces-redirect=true");
        }
    }
    
    public String userAuthentication() {
        
        user = uFL.checkValidUser(login, password);
        
        
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
            FacesContext.getCurrentInstance().addMessage("loginForm:loginButton", new FacesMessage("Mauvais login et/ou mot de passe"));
            return null;
        }
        
        
    }
    
    public String sellerAuthentication() {
        
        seller = sFL.checkValidSeller(login, password);
        
        
        if (seller != null) {
            
            //redirection vers la page d'accueil d'administration
            return "index.xhtml?faces-redirect=true";
            
        } else {
            //Sinon afficher une erreur
            FacesContext.getCurrentInstance().addMessage("loginForm:loginButton", new FacesMessage("Mauvais login et/ou mot de passe"));
            return null;
        }
        
        
    }
    
    

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    
    
    public Boolean getIsConnected() {
        return isConnected;
    }

    public void setIsConnected(Boolean isConnected) {
        this.isConnected = isConnected;
    }

    public String getNewMail() {
        return newMail;
    }

    public void setNewMail(String newMail) {
        this.newMail = newMail;
    }
    
    

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public Sellers getSeller() {
        return seller;
    }

    public void setSeller(Sellers seller) {
        this.seller = seller;
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
