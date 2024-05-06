
package com.teamhydra.Objects;



/**
 *
 * @author adipasith
 */
public class UserInfo {
    
    private int userId = 0;
    private String name = "Jhone Doe";
    private String email = "Example@com";
    private String password = "123";
    private int phone = 15654;
    private String address = "1/2,ABC Street/ Colombo";
    private String profileImage ="Common Resources/Assets/avatar.png";
    private int active = 15654;
    public UserInfo() {
    }
    
    public UserInfo(int userId, String name, String email, String password, int phone, String address,String profileImage,int active) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.profileImage = profileImage;
        this.active = active;
    }

    public UserInfo(String name, String email, String password, int phone, String address) {
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
    
    public String getProfileImage() {
        return profileImage;
    }
    
    public void setProfileImage (String profileImage) {
        this.profileImage = profileImage;
    }
    public int getActive() {
        return active;
    }
    
    public void setAcitve(int active) {
        this.active = active;
    }
}
