/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booXtore.service;

import com.booXtore.domain.Users;
import java.util.List;
import javax.ejb.Local;

/**
 * Interface présentant les méthodes accessibles pour l'accès Classe regroupant 
 * les méthodes spécifique pour l'accès à l'entité <strong>Users</strong>
 * @author Antoine-Ali
 */
@Local
public interface UsersFacadeLocal {

    void create(Users user);

    void edit(Users user);

    void remove(Users user);

    Users find(Object id);

    List<Users> findAll();

    List<Users> findRange(int[] range);

    int count();

    Boolean checkValidLogin(String login);

    public Users findUserById(Integer id);

    public Users findUserByLogin(String login);

    public Users checkValidUser(String login, String password);
    
}
