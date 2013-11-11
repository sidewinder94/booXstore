package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.service.BooksFacadeLocal;
import static com.booXtore.utilities.StringUtilities.*;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author Jordan
 */
@ManagedBean
@ViewScoped
public class BookBean implements Serializable {

    @EJB
    private BooksFacadeLocal bFL;
    private Books book;

    /**
     * Constructor
     */
    public BookBean() {
        
        // get id from param
        FacesContext fc = FacesContext.getCurrentInstance();
        String idParamRaw = getParam(fc, "id");

        // test and parse id
        if ( idParamRaw == null ) 
        {
            try 
            {
                // redirect back to catalog
                fc.getExternalContext().redirect("catalog.xhtml");
            } catch (IOException ex) 
            {
                Logger.getLogger(BookBean.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        
    }
    
    /**
     * Book getter
     * @return a Book
     */
    public Books getBook() {
        FacesContext fc = FacesContext.getCurrentInstance();
        String idParamRaw = getParam(fc, "id");
        int idParam = Integer.parseInt(idParamRaw);
        this.book = bFL.find(idParam);
        return book;
    }

    /**
     * Book setter
     * @param book the Book to set 
     */
    public void setBook(Books book) {
        this.book = book;
    }
    
    public String dateFormat()
    {
        return formatDate(book.getReleaseDate());
    }

}