/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXstore;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author martin
 */
@Stateless
@LocalBean
public class NewSessionBean {

    public String businessMethod() {
        return "Test Suceeded";
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

}
