/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.Books;
import com.booXtore.domain.Categories;
import com.booXtore.service.BooksFacadeLocal;
import com.booXtore.service.CategoriesFacadeLocal;
import com.booXtore.service.SettingsFacadeLocal;
import static com.booXtore.utilities.StringUtilities.*;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author Antoine-Ali
 */
@ManagedBean
@ViewScoped
public class SearchProviderBean implements Serializable {

    @EJB
    private BooksFacadeLocal bFL;
    @EJB
    private CategoriesFacadeLocal cFL;
    @EJB
    private SettingsFacadeLocal sFL;
    private String search;
    private Categories searchCategory;
    private List<Books> searchResults;
    private Integer booksPerPage;
    private Integer currentPage;
    private Integer pages;

    /**
     * Creates a new instance of SearchProviderBean
     */
    public SearchProviderBean() {
    }

    /**
     *
     * @return la liste de toutes les categories
     */
    public List<Categories> getCategories() {
        List<Categories> result = cFL.findAll();

        return result;
    }

    /**
     *
     * @return retourne la categorie indiquée dans l'url
     */
    public Categories getSearchCategory() {
        FacesContext fc = FacesContext.getCurrentInstance();
        if (getParam(fc, "category") != null) {
            this.searchCategory = cFL.find(Integer.parseInt(getParam(fc,
                    "category")));
        }
        return this.searchCategory;
    }

    public void setSearchCategory(Categories searchCategory) {
        this.searchCategory = searchCategory;
    }

    /**
     *
     * @return l'url permettant d'effectuer une recherche avec
     * la catégorie et le pattern de recherche
     */
    public String launchSearch() {
        String cat = "";
        if ((this.searchCategory != null)
                && (!this.searchCategory.getName().equalsIgnoreCase("Toutes Catégories"))) {
            cat = "&category=" + this.searchCategory.getId();
        }
        return "catalog.xhtml?faces-redirect=true&search=" + search + cat;

    }

    /**
     *
     * @return un string contenant le pattern de recherche
     * gère l'encodage des données
     */
    public String getSearch() {
        FacesContext fc = FacesContext.getCurrentInstance();
        String searchParam = getParam(fc, "search");
        if (searchParam != null) {
            this.search = decode(searchParam);
        }

        return search;
    }

    public void setSearch(String search) {
        this.search = decode(search);
    }

    /**
     *
     * @return une catégorie par défaut appelée "Toutes Catégories"
     * permettant de rechercher sur toutes les catégories
     */
    public Categories getDefaultCategorySearch() {
        Categories def = new Categories();
        def.setName("Toutes Catégories");
        def.setId(-1);
        return def;
    }

    /**
     * effectue la recherche
     * @return la liste de livres en gérant les pages et le nombre de livres
     * par page
     */
    public List<Books> getSearchResults() {
        FacesContext fc = FacesContext.getCurrentInstance();
        if (getParam(fc, "category") != null) {
            if (getSearch() != null) {
                this.searchResults = bFL.getBooksByNameAndCategory(getSearch(),
                        getSearchCategory());
            } else {
                this.searchResults = bFL.getBooksByCategory(getSearchCategory());
            }
        } else {
            this.searchResults = bFL.getBooksByName(getSearch());
        }

        this.booksPerPage = sFL.findAll().get(0).getArticlesPerPage();


        this.pages = (this.searchResults.size() / this.booksPerPage);
        if ((this.searchResults.size() % this.booksPerPage) > 0) {
            this.pages++;
        }
        if (pages > 1) {
            Integer maxPage = ((getCurrentPage() - 1) * this.booksPerPage) + this.booksPerPage;
            if (maxPage > searchResults.size()) {
                maxPage = searchResults.size() - 1;
            }
            return this.searchResults.subList((getCurrentPage() - 1) * this.booksPerPage,
                    maxPage);
        } else {
            return this.searchResults;
        }
    }

    /**
     *
     * @return l'intégralité des livres de la base
     */
    public List<Books> getAllBooks() {
        return this.bFL.findAll();
    }

    /**
     *
     * @param book
     * @return un string contenant le nom du premier autheur d'un livre
     * pour un meilleur affichage dans le cas ou il y a plusieurs autheurs
     * 
     */
    public String getBookFirstAuthor(Books book) {
        return book.getAuthors().get(0).getName();
    }

    /**
     * génère l'url pour atterir sur la page produit d'un livre
     * @param book
     * @return l'url de la page produit du livre
     */
    public String generateBookLink(Books book) {
        return "product.xhtml?id=" + book.getId();
    }

    /**
     *
     * @return un Integer contenant le numéro de page actuel
     */
    public Integer getCurrentPage() {
        FacesContext fc = FacesContext.getCurrentInstance();
        if (getParam(fc, "page") == null) {
            this.currentPage = 1;
        } else {
            this.currentPage = Integer.parseInt(getParam(fc, "page"));
        }
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPages() {
        return pages;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }

    /**
     *
     * @param page
     * @return l'url permettant de changer de page
     */
    public String goToPage(Integer page) {
        return launchSearch() + "&page=" + page;
    }
}
