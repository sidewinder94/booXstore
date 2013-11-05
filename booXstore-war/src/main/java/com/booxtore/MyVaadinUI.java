package com.booxtore;

import com.booXstore.NewSessionBean;

import com.vaadin.annotations.Theme;
import com.vaadin.cdi.CDIUI;
import com.vaadin.server.ExternalResource;
import com.vaadin.server.VaadinRequest;
import com.vaadin.ui.Alignment;
import com.vaadin.ui.Button;
import com.vaadin.ui.HorizontalLayout;
import com.vaadin.ui.Label;
import com.vaadin.ui.Link;
import com.vaadin.ui.NativeSelect;
import com.vaadin.ui.TextField;
import com.vaadin.ui.UI;
import com.vaadin.ui.VerticalLayout;
import com.vaadin.ui.themes.Runo;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

@Theme("runo")
@SuppressWarnings("serial")
@CDIUI
public class MyVaadinUI extends UI
{
    @EJB
    private NewSessionBean nSB;
    
    
    private final VerticalLayout content = new VerticalLayout();

    @Override
    protected void init(VaadinRequest request) {

        setContent(content);
        setStyleName(Runo.PANEL_LIGHT);
        
        content.addComponent(getTopBar());
        content.addComponent(getTitleArea());
        content.addComponent(getSearchBar());

    }

    private HorizontalLayout getTitleArea () {
        
        Label title = new Label("booXtore");
        title.addStyleName(Runo.LABEL_H1);
        title.setSizeUndefined();
        
        HorizontalLayout titleArea = new HorizontalLayout();
        titleArea.addComponent(title);
        titleArea.setWidth("100%");
        titleArea.setComponentAlignment(title, Alignment.MIDDLE_CENTER);
        
        return titleArea;
        
    }
    
    private HorizontalLayout getTopBar () {
        
        HorizontalLayout topbar = new HorizontalLayout();
        topbar.addComponent(new Link("Login", new ExternalResource("#")));
        topbar.addComponent(new Link("Create Account", new ExternalResource("#")));
        topbar.addComponent(new Link("Panier", new ExternalResource("#")));
        topbar.addComponent(new Label("1 item, $5.00"));
        topbar.addComponent(new Button("Checkout"));
        
        topbar.setWidth("100%");
        topbar.setStyleName(Runo.LAYOUT_DARKER);
        
        return topbar;
        
    }
    
    private HorizontalLayout getSearchBar () {
        
        HorizontalLayout searchBar = new HorizontalLayout();
        TextField search = new TextField("Search something");
        Button searchButton = new Button("Go !");
        NativeSelect category  = new NativeSelect("Category");
        
        searchBar.addComponent(search);
        searchBar.addComponent(searchButton);
        searchBar.addComponent(category);
        
        return searchBar;
        
    }
    
}
