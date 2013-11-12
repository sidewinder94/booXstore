/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.booXtore;

import com.booXtore.domain.BookOrders;
import com.booXtore.domain.Books;
import com.booXtore.domain.Orders;
import com.booXtore.domain.StateOrders;
import com.booXtore.domain.States;
import com.booXtore.domain.Users;
import com.booXtore.service.BookOrdersFacadeLocal;
import com.booXtore.service.CartSessionBean;
import com.booXtore.service.CartSessionBeanLocal;
import com.booXtore.service.OrdersFacadeLocal;
import com.booXtore.service.StateOrdersFacadeLocal;
import com.booXtore.service.StatesFacadeLocal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Named;

/**
 *
 * @author Julien
 */
@ManagedBean(name = "orderbean")
@ViewScoped
public class OrderBean 
{
    private Users user;
    private Orders order;
    private BookOrders bookorder;
    private List<Orders> filteredOrders;
    private Float totalPrice;
    
    @EJB
    private OrdersFacadeLocal oFL;
    
    @EJB
    private BookOrdersFacadeLocal boFL;
    
    private HashMap<Books, Integer> cart;
    
    @EJB
    private StateOrdersFacadeLocal sFL;
    
    private List<BookOrders> bookordersList;
    
    private String cardNumber;
    
    public String validateOrder(){
        order = new Orders();
   //     DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //get current date time with Date()
    //    Date date = new Date();
           
//        order.setOrderDate(dateFormat.format(date));
        order.setTotalPrice(totalPrice);
        order.setUsers(user);
  //      order.setBookOrders(this.cSB.getContent());
        
        this.oFL.create(order);
        
        return null;
    }

    /**
     * Retourne la liste des commandes non envoyées
     * @return un liste de Orders
     */
    public List<Orders> getFilteredOrders() {
        StateOrders interesting = new StateOrders();
        for(StateOrders state : sFL.findAll())
        {
            if (state.getName().equalsIgnoreCase("Envoyée"))
            {
                interesting = state;
            }
        }
        return this.oFL.findAllOrdersButState(interesting);
    }

    /**
     * Modifie le filtre de commandes
     * @param filteredOrders
     */
    public void setFilteredOrders(List<Orders> filteredOrders) {
        this.filteredOrders = filteredOrders;
    }

    /**
     * Retourne une liste de BookOrders
     * @return une liste de BookOrders
     */
    public List<BookOrders> getBookordersList() {
        return bookordersList;
    }

    /**
     * Modifie la liste de BookOrders
     * @param bookordersList
     */
    public void setBookordersList(List<BookOrders> bookordersList) {
        this.bookordersList = bookordersList;
    }
    
    /**
     * Constructeur par défaut d'OrderBean
     */
    public OrderBean() {     
    }

    /**
     * Retourne le client de la commande
     * @return un Users
     */
    public Users getUser() {
        return user;
    }

    /**
     * Modifie le client de la commande
     * @param user
     */
    public void setUser(Users user) {
        this.user = user;
    }

    /**
     * Retourne la commande
     * @return un Orders
     */
    public Orders getOrder() {
        return order;
    }

    /**
     * Modifie la commande
     * @param order
     */
    public void setOrder(Orders order) {
        this.order = order;
    }

    /**
     * Retourne un BookOrder
     * @return un BookOrder
     */
    public BookOrders getBookorder() {
        return bookorder;
    }

    /**
     * Modifie un BookOrder
     * @param bookorder
     */
    public void setBookorder(BookOrders bookorder) {
        this.bookorder = bookorder;
    }

    /**
     * Retourne le numéro de carte
     * @return un String
     */
    public String getCardNumber() {
        return cardNumber;
    }

    /**
     * Modifie le numéro de carte
     * @param numberCard
     */
    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public HashMap<Books, Integer> getCart() {
        return cart;
    }

    public void setCart(HashMap<Books, Integer> cart) {
        this.cart = cart;
    }

    public Float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Float totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    
    
    
    
}
