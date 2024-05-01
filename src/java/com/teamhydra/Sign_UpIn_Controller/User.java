/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Sign_UpIn_Controller;

/**
 *
 * @author adipasith
 */
public class User {
    int id;
    String fullname;
    String email;
    String password;
    String confirmpassword;
    
    public User() {
        
    }
    
    public User(int id, String fullname, String email, String password, String confirmpassword) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.confirmpassword = confirmpassword;
    }
    
    public User(String fullname, String email, String password, String confirmpassword) {
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.confirmpassword = confirmpassword;
    }
    
    public User(String email, String password, String confirmpassword) {
        this.email = email;
        this.password = password;
        this.confirmpassword = confirmpassword;
    }
    
    public User(String password, String confirmpassword) {
        this.password = password;
        this.confirmpassword = confirmpassword;
    }
    
    public User(String Confirmpassword) {
        this.confirmpassword = confirmpassword;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
     public String getFullName() {
        return fullname;
    }
     
    public void setFullName(String fullname) {
        this.fullname = fullname;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getConfirmPassword() {
        return confirmpassword;
    }
    
    public void setConfirmPassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }
}
