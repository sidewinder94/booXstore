/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore;

import com.booXtore.domain.BookOrders;
import com.booXtore.domain.Books;
import com.booXtore.service.BooksFacadeLocal;
import java.util.*;
import java.util.Map.Entry;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import static com.booXtore.utilities.StringUtilities.*;
import java.io.Serializable;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Antoine-Ali
 */
@ManagedBean
@ViewScoped
public class HomeManagedBean implements Serializable{
    @EJB
    private BooksFacadeLocal bFL;
    private List<Books> bestSellers;

    private List<Books> fetchBestSellers() {
        LinkedHashMap<Books, Integer> count = new LinkedHashMap<>();
        //Compositio nde la hashmap contenant le compte des achats par livres
        for (Books book : this.bFL.findAll()) {
            for (BookOrders bookOrder : book.getBookOrders()) {
                if (count.get(book) == null) {
                    count.put(book, bookOrder.getQuantity());
                } else {
                    count.put(book, (count.get(book) + bookOrder.getQuantity()));
                }
            }
        }
        return filterBooks(count);
    }

    private List<Books> filterBooks(LinkedHashMap<Books, Integer> map) {
        List<Books> temp = new LinkedList<>();
        Books currentTopBook = null;
        Integer currentTopValue = 0;
        do {
            for (Entry<Books, Integer> entry : map.entrySet()) {
                if (entry.getValue() > currentTopValue) {
                    currentTopValue = entry.getValue();
                    currentTopBook = entry.getKey();
                }
            }
            if (currentTopBook != null) {
                map.remove(currentTopBook);
                temp.add(currentTopBook);
                currentTopBook = null;
                currentTopValue = 0;
            }
        } while ((!map.isEmpty()) && (temp.size() < 10));
        return temp;
    }
    /**
     * Creates a new instance of HomeManagedBean
     */
    public HomeManagedBean() {
    }

    public List<Books> getBestSellers() {
        bestSellers = fetchBestSellers();
        return bestSellers;
    }

    public void setBestSellers(List<Books> bestSellers) {
        this.bestSellers = bestSellers;
    }
    
    public String getLink(Books book)
    {
        return generateBookLink(book);
    }
}
