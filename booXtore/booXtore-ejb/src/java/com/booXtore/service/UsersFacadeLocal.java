/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Users;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Antoine-Ali
 */
@Local
public interface UsersFacadeLocal {

    void create(Users users);

    void edit(Users users);

    void remove(Users users);

    Users find(Object id);

    List<Users> findAll();

    List<Users> findRange(int[] range);

    int count();

    Boolean checkValidUser(String login, String password);

    void register(Users user);

    public Users findUserById(Integer id);

    public Users findUserByLogin(String login);

    public Users checkValidUser1(String login, String password);
    
}
