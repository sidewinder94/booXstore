/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booxtore;

import com.vaadin.server.VaadinServlet;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Antoine-Ali
 */
@WebServlet(urlPatterns = "/*",
            initParams = {
                @WebInitParam(name = "UI", value = "com.booxtore.MyVaadinUI"),
                @WebInitParam(name = "UIProvider", value = "com.vaadin.cdi.CDIUIProvider"), 
                @WebInitParam(name = "ui", value = "com.booxtore.MyVaadinUI")
            }
        )
public class MyServlet extends VaadinServlet{}
