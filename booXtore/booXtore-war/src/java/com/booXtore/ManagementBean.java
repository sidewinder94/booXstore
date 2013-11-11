/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import com.booXtore.domain.States;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import com.booXtore.service.StatesFacadeLocal;
import static com.booXtore.utilities.StringUtilities.*;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author brobert
 */
@ManagedBean
@ViewScoped
public class ManagementBean implements Serializable {

    @EJB
    private BooksFacadeLocal bFL;
    
    @EJB
    private StatesFacadeLocal sFL;
    
    @EJB
    private CategoriesFacadeLocal cFL;
    
    public ManagementBean() {
        
    }
    
    public List<Books> getBooks()
    {
        return bFL.findAll();
    }
    
    public List<States> getStates()
    {
        return sFL.findAll();
    }
    
    public String filterByCategory(Categories category)
    {
        return "management.xhtml?faces-redirect=true&category=" + category.getId() ;
    }
    
    public Integer countBooks()
    {
        return bFL.count();
    }
    
    public Integer getCategorytoManage()
    {
        return getCategoryParam();
    }
    
    public List<Books> getBooksByCategory()
    {
        Categories cat = new Categories();
        cat.setName("toto");
        cat.setId(-1);
        if(getCategoryParam() != null)
        {
            cat = cFL.find(getCategoryParam());
        }
        return this.bFL.getBooksByCategory(cat);
    }
    
    private Integer getCategoryParam()
    {
        FacesContext fc = FacesContext.getCurrentInstance();
        String raw = getParam(fc, "category");
        if (raw!= null)
        {
            return Integer.parseInt(raw);
        }
        return null;
    }
    
}
