/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.converters;

import com.booXtore.domain.Categories;
import com.booXtore.service.CategoriesFacadeLocal;
import javax.ejb.EJB;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author Antoine-Ali
 */
@FacesConverter("com.booXtore.converters.CategoriesConverter")
public class CategoriesConverter implements Converter{

    @EJB
    private CategoriesFacadeLocal cFL;
    
    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if((value != null) && (Integer.parseInt(value) != -1))
        {
            Integer id = Integer.parseInt(value);
            return cFL.find(id);
        }
        Categories cat = new Categories();
        cat.setName("Toutes Catégories");
        return cat;
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        Categories cat = (Categories)value;
        if(cat.getName().equals("Toutes Catégories"))
        {
            return "-1";
        }
        else
        {
            return cat.getId().toString();
        }
    }
    
}
