/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;

/**
 *
 * @author Antoine-Ali
 */
@Named(value = "AuthenticationBean")
@SessionScoped
public class AuthenticationBean implements Serializable {

    /**
     * Creates a new instance of AuthenticationBean
     */
    public AuthenticationBean() {
    }
}
