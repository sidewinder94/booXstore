/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import com.booXtore.domain.States;
import com.booXtore.service.BooksFacade;
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
    
    private Categories category;
    
    private Books book;
    
    private String newCategoryName;
    
    private String categoryName;
    
    public ManagementBean() {
        
    }
    
    
    public List<Books> booksUnderThreshold()
    {
        return bFL.findUnderThresholdBooks();
    }
    
    
    public String addCategory(){
        Categories cat = new Categories();
        cat.setName(newCategoryName);
        cFL.create(cat);
        newCategoryName = null;
        return null;
    }
    
    
    public String modifyCategory(Categories category){
        category.setName(this.categoryName);
        this.cFL.edit(category);
        this.categoryName = null;
        return null;
    }
    
    public String deleteCategory(Categories category){
        cFL.remove(category);
        return null;
    }
    
    
    public String modifyBook(Books book){
        bFL.edit(book);
        return null;
    }
    
    /**
     * Retourne la liste de tous les Books
     * @return une liste de Books
     */
    public List<Books> getBooks()
    {
        return bFL.findAll();
    }
    
    /**
     * Retourne la liste de tous les états
     * @return une liste de States
     */
    public List<States> getStates()
    {
        return sFL.findAll();
    }
    
    /**
     * Redirection avec une URL de recherche par catégorie
     * @param category
     * @return une URL de recherche avec l'ID d'une catégorie
     */
    public String filterByCategory(Categories category)
    {
        this.category = category;
        return null;
  //      return "management.xhtml?faces-redirect=true&category=" + category.getId() ;
    }
    
    /**
     * Retourne le nombre de Livres
     * @return un Integer
     */
    public Integer countBooks()
    {
        return bFL.count();
    }
    
    /**
     * Retourne l'ID de la catégorie à gérer
     * @return un Integer
     */
    public Integer getCategorytoManage()
    {
        return getCategoryParam();
    }
    
    /**
     * Retourne une liste de livres par catégorie
     * @return une liste de Books
     */
    public List<Books> getBooksByCategory()
    {/*
        Categories cat = new Categories();
        cat.setName("toto");
        cat.setId(-1);
        if(getCategoryParam() != null)
        {
            cat = cFL.find(getCategoryParam());
        }
        return this.bFL.getBooksByCategory(cat);*/
        
        return this.bFL.getBooksByCategory(this.category);
    }
    
    
    private Integer getCategoryParam()
    {/*
        FacesContext fc = FacesContext.getCurrentInstance();
        String raw = getParam(fc, "category");
        if (raw!= null)
        {
            return Integer.parseInt(raw);
        }*/
        return null;
    }

    public Categories getCategory() {
        return category;
    }

    public void setCategory(Categories category) {
        this.category = category;
    }

    public Books getBook() {
        return book;
    }

    public void setBook(Books book) {
        this.book = book;
    }

    public String getNewCategoryName() {
        return newCategoryName;
    }

    public void setNewCategoryName(String newCategoryName) {
        this.newCategoryName = newCategoryName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    
    
    
    
}
