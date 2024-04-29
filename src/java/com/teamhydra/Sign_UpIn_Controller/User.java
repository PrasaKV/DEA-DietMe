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
    
    public User(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
     public String getfullname() {
        return fullname;
    }
     
    public void setfullname(String fullname) {
        this.fullname = fullname;
    }
    
    public String getemail() {
        return email;
    }
    
    public void setemail(String email) {
        this.email = email;
    }
    
    public String getpassword() {
        return password;
    }
    
    public void setpassword(String password) {
        this.password = password;
    }
    
    public String getconfirmpassword() {
        return confirmpassword;
    }
    
    public void setconfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }
}
