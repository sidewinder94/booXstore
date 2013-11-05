package com.booxstore.booxstore.war;

import javax.servlet.annotation.WebServlet;

import com.vaadin.annotations.Theme;
import com.vaadin.annotations.VaadinServletConfiguration;
import com.vaadin.server.ExternalResource;
import com.vaadin.server.VaadinRequest;
import com.vaadin.server.VaadinServlet;
import com.vaadin.ui.Alignment;
import com.vaadin.ui.Button;
import com.vaadin.ui.HorizontalLayout;
import com.vaadin.ui.Label;
import com.vaadin.ui.Link;
import com.vaadin.ui.UI;
import com.vaadin.ui.VerticalLayout;
import com.vaadin.ui.themes.Runo;

@Theme("runo")
@SuppressWarnings("serial")
public class MyVaadinUI extends UI
{

    private final VerticalLayout content = new VerticalLayout();
    
    @WebServlet(value = "/*", asyncSupported = true)
    @VaadinServletConfiguration(productionMode = false, ui = MyVaadinUI.class, widgetset = "com.booxstore.booxstore.war.AppWidgetSet")
    public static class Servlet extends VaadinServlet {
    }

    @Override
    protected void init(VaadinRequest request) {

        setContent(content);
        setStyleName(Runo.PANEL_LIGHT);
        
        content.addComponent(getTopBar());
        content.addComponent(getTitleArea());

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
        return searchBar;
        
    }
    
}
