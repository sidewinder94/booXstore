/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.booXtore;

import com.booXtore.domain.BookOrders;
import com.booXtore.domain.Orders;
import com.booXtore.domain.Users;
import java.util.List;
import javax.inject.Named;

/**
 *
 * @author Julien
 */
@Named(value = "orderbeans")
public class OrderBeans 
{
    private Users user;
    private Orders order;
    private BookOrders bookorder;
    
    private List<BookOrders> bookordersList;

    public List<BookOrders> getBookordersList() {
        return bookordersList;
    }

    public void setBookordersList(List<BookOrders> bookordersList) {
        this.bookordersList = bookordersList;
    }
    
    public OrderBeans() {     
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public BookOrders getBookorder() {
        return bookorder;
    }

    public void setBookorder(BookOrders bookorder) {
        this.bookorder = bookorder;
    }
}
