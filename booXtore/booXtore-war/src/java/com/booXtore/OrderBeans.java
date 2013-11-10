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
    
    private float fTotal;
    
    private String sUserFirstName;
    private String sUserLastName;
    private String sAddress;
    private String sZIP;
    private String sCity;
    
    private List<BookOrders> bookordersList;

    public List<BookOrders> getBookordersList() {
        return bookordersList;
    }

    public void setBookordersList(List<BookOrders> bookordersList) {
        this.bookordersList = bookordersList;
    }
    
    public OrderBeans() {     
    }

    public float getfTotal() {
        return fTotal;
    }

    public void setfTotal(float fTotal) {
        this.fTotal = fTotal;
    }
    
    public String getsUserFirstName() {
        return sUserFirstName;
    }

    public void setsUserFirstName(String sUserFirstName) {
        this.sUserFirstName = sUserFirstName;
    }

    public String getsUserLastName() {
        return sUserLastName;
    }

    public void setsUserLastName(String sUserLastName) {
        this.sUserLastName = sUserLastName;
    }
    
    public String getsAddress() {
        return sAddress;
    }

    public void setsAddress(String sAddress) {
        this.sAddress = sAddress;
    }

    public String getsZIP() {
        return sZIP;
    }

    public void setsZIP(String sZIP) {
        this.sZIP = sZIP;
    }

    public String getsCity() {
        return sCity;
    }

    public void setsCity(String sCity) {
        this.sCity = sCity;
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
