/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Settings;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface SettingsFacadeLocal {

    void create(Settings settings);

    void edit(Settings settings);

    void remove(Settings settings);

    Settings find(Object id);

    List<Settings> findAll();

    List<Settings> findRange(int[] range);

    int count();
    
}
