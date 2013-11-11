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
 * Classe de conversion utilisée pour permettre à l'interface graphique de gérer des objets
 * de type <strong>Categories</strong>
 * @author Antoine-Ali
 */
@FacesConverter("com.booXtore.converters.CategoriesConverter")
public class CategoriesConverter implements Converter{

    @EJB
    private CategoriesFacadeLocal cFL;
    
    /**
     * Méthode permettant de récupérer l'objet à partir d'une chaine de caractères
     * @param context Le contexte actuel de l'application
     * @param component Le composant demandant la conversion
     * @param value La chaine de caractères permettant de reconstruire l'objet
     * @return L'objet reconstruit
     */
    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if((value != null) && (Integer.parseInt(value) != -1))
        {
            Integer id = Integer.parseInt(value);
            return cFL.find(id);
        }
        Categories cat = new Categories();
        cat.setName("Toutes Catégories");
        cat.setId(-1);
        return cat;
    }

    /**
     * Méthode permettant de récupérer une chaine caractérisant l'objet
     * @param context Le contexte actuel de l'application
     * @param component LE composant demandant la convertion
     * @param value L'objet à convertit
     * @return La chaine de caractères caractérisant l'objet
     */
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
