/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.booXtore;

import com.booXtore.domain.BookOrders;
import com.booXtore.domain.Orders;
import com.booXtore.domain.StateOrders;
import com.booXtore.domain.States;
import com.booXtore.domain.Users;
import com.booXtore.service.OrdersFacadeLocal;
import com.booXtore.service.StateOrdersFacadeLocal;
import com.booXtore.service.StatesFacadeLocal;
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
    
    @EJB
    private OrdersFacadeLocal oFL;
    
    @EJB
    private StateOrdersFacadeLocal sFL;
    
    private List<BookOrders> bookordersList;

    /**
     *
     * @return
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
     *
     * @param filteredOrders
     */
    public void setFilteredOrders(List<Orders> filteredOrders) {
        this.filteredOrders = filteredOrders;
    }

    /**
     *
     * @return
     */
    public List<BookOrders> getBookordersList() {
        return bookordersList;
    }

    /**
     *
     * @param bookordersList
     */
    public void setBookordersList(List<BookOrders> bookordersList) {
        this.bookordersList = bookordersList;
    }
    
    /**
     *
     */
    public OrderBean() {     
    }

    /**
     *
     * @return
     */
    public Users getUser() {
        return user;
    }

    /**
     *
     * @param user
     */
    public void setUser(Users user) {
        this.user = user;
    }

    /**
     *
     * @return
     */
    public Orders getOrder() {
        return order;
    }

    /**
     *
     * @param order
     */
    public void setOrder(Orders order) {
        this.order = order;
    }

    /**
     *
     * @return
     */
    public BookOrders getBookorder() {
        return bookorder;
    }

    /**
     *
     * @param bookorder
     */
    public void setBookorder(BookOrders bookorder) {
        this.bookorder = bookorder;
    }
}
