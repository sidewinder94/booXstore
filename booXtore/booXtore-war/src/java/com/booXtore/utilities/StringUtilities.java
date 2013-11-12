/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.utilities;

import com.booXtore.domain.Books;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.faces.context.FacesContext;

/**
 * Classe utilitaire contenant des méthodes statiques pour la gestion du texte
 * @author Antoine-Ali
 */
public class StringUtilities {
    
    /**
     * Méthode utilisée pour décoder toute saisie utilisateur pour reconnaitre les caractères spéciaux
     * @param toDecode la chaine a décoder
     * @return la chaine correctement encodée
     */
    public static String decode(String toDecode)
    {
        Charset input = Charset.forName("UTF-8");
        ByteBuffer inputBuffer = ByteBuffer.wrap(toDecode.getBytes());
        CharBuffer charBuffer =  input.decode(inputBuffer);
        
        return charBuffer.toString();
    }
    
    /**
     * Fonction permettant de récupérer un paramètre dans l'url
     * @param fc Le context actuel de l'application
     * @param paramName Le paramètre à rechercher dans l'url
     * @return La valeur du paramètre ou null si non présent
     */
    public static String getParam(FacesContext fc, String paramName) {
        return fc.getExternalContext().getRequestParameterMap().get(paramName);
    }
    
    
    /**
     * Fonction formattant une date suivant les normes françaises.
     * @param format La date à formatter.
     * @return La date formattée.
     */
    public static String formatDate(Date format)
    {
        DateFormat df = DateFormat.getDateInstance(DateFormat.LONG, Locale.FRENCH);
        return df.format(format);
    }
 
     /**
     * génère l'url pour atterir sur la page produit d'un livre
     * @param book
     * @return l'url de la page produit du livre
     */
    public static String generateBookLink(Books book) {
        return "product.xhtml?id=" + book.getId();
    }
}
