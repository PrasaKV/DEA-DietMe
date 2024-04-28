/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Sign_UpIn_Controller;

import java.sql.*;

/**
 *
 * @author adipasith
 */
public class UserDatabase {
    Connection con;
    
    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    // for regiester user
    public boolean saveUser(User user) {
        boolean set = false;
        
        try {
            // Insert register data to database
            String query = "insert into user(fullname,email,password,confirmpassword)values(?,?,?,?)";
            
            PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getfullname());
           pt.setString(2, user.getemail());
           pt.setString(3, user.getpassword());
           pt.setString(4, user.getconfirmpassword());
           
           pt.executeUpdate();
           set = true;
        } catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
}
