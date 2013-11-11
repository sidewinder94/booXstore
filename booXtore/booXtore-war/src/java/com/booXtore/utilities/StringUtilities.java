/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.utilities;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

/**
 * Classe utilitai contenant des méthodes statiques pour la gestion du texte
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
    
}
