/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mii.server.repositories;

import com.mii.server.entities.User;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author William Yangjaya
 */
@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
    List<User> findByUsername(String username);
//    User findByUsernameOfTheUser(String username);
}
