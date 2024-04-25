/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Objects;

/**
 *
 * @author adipasith
 */
public class User {
    
    private int userId;
    private String name;
    private String email;
    private String password;
    private int phone;
    private List address;
    
    public User() {
    }
    
    public User(int id, String fullname, String email, String password, int phone, List address) {
        this.id = userId;
        this.fullname = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
    }
    

    public int getId() {
        return userId;
    }
    
    public void setId(int id) {
        this.userId = userId;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
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
    public int getPhone() {
        return phone;
    }
    
    public void setPhone(int phone) {
        this.phone = phone;
    }
    public List getAddress() {
        return address;
    }
    
    public void setAddress (List address) {
        this.address = address;
    }
    
}
