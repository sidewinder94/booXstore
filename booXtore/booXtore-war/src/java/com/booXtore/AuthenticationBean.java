/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;


import com.booXtore.domain.Orders;
import com.booXtore.domain.Sellers;
import com.booXtore.domain.Users;
import com.booXtore.service.OrdersFacadeLocal;
import com.booXtore.service.SellersFacadeLocal;
import com.booXtore.service.UsersFacadeLocal;
import java.io.IOException;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import static com.booXtore.utilities.StringUtilities.*;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.util.List;
import java.util.Locale;
import javax.ejb.EJB;
import javax.faces.application.ConfigurableNavigationHandler;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.faces.event.ComponentSystemEvent;

/**
 * Classe responsable de l'inscription et de l'authentification des utilisateurs
 * @author Antoine-Ali
 */
@ManagedBean(name = "AuthenticationBean")
@SessionScoped
public class AuthenticationBean implements Serializable {

    @EJB
    private UsersFacadeLocal uFL;
    
    @EJB
    private SellersFacadeLocal sFL;
    
    @EJB
    private OrdersFacadeLocal oFL;
    
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
   
    public List<Orders> getOrdersByUser(){
        List<Orders> orders = oFL.getOrdersByUser(user);
        return orders;
    }
    
    /**
     * Change les informations de l'utilisateur
     * @throws IOException 
     */
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
    
    /**
     * Change le mot de passe de l'utilisateur
     * @return 
     */
    public String changePassword() throws NoSuchAlgorithmException{
        if(!newPassword.equals(confirmPassword)){
            FacesContext.getCurrentInstance().addMessage("passwordForm:newPassConfirm", new FacesMessage("Le mot de passe ne correspond pas"));
            return null;
        }
        else if(uFL.checkValidUser(login, generateSHA256(password)) != null){
            //mise a jour du mot de passe
            user.setPassword(generateSHA256(newPassword));
            uFL.edit(user);
            FacesContext.getCurrentInstance().addMessage("passwordForm:passwordButton", new FacesMessage("Votre mot de passe a été mis à jour"));
            return null;
        }
        else{
            FacesContext.getCurrentInstance().addMessage("passwordForm:password", new FacesMessage("Mot de passe incorrect"));
            return null;
        }
    }
    
    /**
     * Change l'adresse mail de l'utilisateur
     * @return 
     */
    public String changeMail(){
        
        mail = newMail;
        newMail = null;
        user.setMail(mail);
        uFL.edit(user);
        FacesContext.getCurrentInstance().addMessage("mailForm:mailButton", new FacesMessage("Votre adresse mail a été mise à jour"));
        return null;
    }
    
    /**
     * Termine la session de l'utilisateur, le déconnectant
     * @return l'addresse de l'accueil pour rediriger l'utilisateur
     */
    public String logout()
    {
        //Déconnexion de la session
        this.login = null;
        this.ZIP = null;
        this.address = null;
        this.city = null;
        this.confirmPassword = null;
        this.firstName = null;
        this.lastName = null;
        this.mail = null;
        this.newMail = null;
        this.newPassword = null;
        this.password = null;
        this.user = null;
        isConnected = false;
        return "index.xhtml?faces-redirect=true";
    }
    
    /**
     * Inscrit un nouvel utilisateur
     * @return l'addresse de l'accueil pour rediriger l'utilisateur
     */
    public String userSignIn() throws NoSuchAlgorithmException{
        if(!password.equals(confirmPassword)){
            FacesContext.getCurrentInstance().addMessage("signinForm:newpasswordConfirm", new FacesMessage("Le mot de passe ne correspond pas"));
            return null;
        }
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
            user.setPassword(generateSHA256(password));
            
            uFL.create(user);
            isConnected = true;
            return "index.xhtml?faces-redirect=true";     
        
        
        }
           
    }
    
    /**
     * Permet de s'avoir si le visiteur courant est authentifié en tant qu'utilisateur
     * @param event 
     */
    public void isUserConnected(ComponentSystemEvent event) {

        FacesContext fc = FacesContext.getCurrentInstance();

        if (user == null || isConnected == false) {

            ConfigurableNavigationHandler nav = (ConfigurableNavigationHandler) fc.getApplication().getNavigationHandler();

            nav.performNavigation("authentication.xhtml?faces-redirect=true");
        }
    }
    
    /**
     * Permet de s'avoir si le visiteur courant est authentifié en tant que libraire
     * @param event 
     */
    public void isSellerConnected(ComponentSystemEvent event) {

        FacesContext fc = FacesContext.getCurrentInstance();

        if (seller == null) {

            ConfigurableNavigationHandler nav = (ConfigurableNavigationHandler) fc.getApplication().getNavigationHandler();

            nav.performNavigation("index.xhtml?faces-redirect=true");
        }
    }
    
    /**
     * Authentifie le visiteur en tant qu'utilisateur
     * @return une redirection vers la page d'index si la
     * connexion a réussi, sinon affiche un message d'erreur
     */
    public String userAuthentication() throws NoSuchAlgorithmException {
        
        user = uFL.checkValidUser(login, generateSHA256(password));
        
        
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
    
    /**
     * Authentifie le visiteur en tant que libraire
     * @return renvoie le libraire vers la page d'administration si
     * la connexion a réussie, sinon affiche un message d'erreur
     */
    public String sellerAuthentication() throws NoSuchAlgorithmException {
        
        seller = sFL.checkValidSeller(login, generateSHA256(password));
        
        
        if (seller != null) {
            
            //redirection vers la page d'accueil d'administration
            return "management.xhtml?faces-redirect=true";
            
        } else {
            //Sinon afficher une erreur
            FacesContext.getCurrentInstance().addMessage("loginForm:loginButton", new FacesMessage("Mauvais login et/ou mot de passe"));
            return null;
        }
        
        
    }
    
    
    
    
    
    /**
     *
     * @param toFormat date a formater
     * @return renvoie une date sous le format
     * français commun (30 avril 2013)
     */
    public String dateFormat(Orders toFormat)
    {
        DateFormat df = DateFormat.getDateInstance(DateFormat.LONG, Locale.FRENCH);
        return df.format(toFormat.getOrderDate());
    }
    
    

    
    
    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = decode(confirmPassword);
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = decode(newPassword);
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
        this.newMail = decode(newMail);
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
        this.login = decode(login);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = decode(password);
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = decode(firstName);
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = decode(lastName);
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = decode(address);
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = decode(mail);
    }

    public String getZIP() {
        return ZIP;
    }

    public void setZIP(String ZIP) {
        this.ZIP = decode(ZIP);
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = decode(city);
    }
    
    
    
    
    

    
    
    
    
    
    
}
