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
public class UserInfo {
    
    private int userId;
    private String name;
    private String email;
    private String password;
    private int phone;
    private String address;
    private String profileImage;
    
    public UserInfo() {
    }
    
    public UserInfo(int userId, String name, String email, String password, int phone, String address) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
    }
    

    public int getId() {
        return userId;
    }
    
    public void setId(int userId) {
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
    public String getAddress() {
        return address;
    }
    
    public void setAddress (String address) {
        this.address = address;
    }
    
    public String getprofileImage() {
        return profileImage;
    }
    
    public void setprofileImage (String profileImage) {
        this.profileImage = profileImage;
    }
}
