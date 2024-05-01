
package com.dietme.admin;

public class Admin {
    private int adminId;
    private String adminName;
    private String email;
    private int mobileNumber;
    private String password;
    private boolean isActive;

    public Admin(int adminId, String adminName, String email, int mobileNumber, String password, boolean isActive) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.email = email;
        this.mobileNumber = mobileNumber;
        this.password = password;
        this.isActive = isActive;
    }

    public Admin(String adminName, String email, int mobileNumber, String password, boolean isActive) {
        this.adminName = adminName;
        this.email = email;
        this.mobileNumber = mobileNumber;
        this.password = password;
        this.isActive = isActive;
    }
    
    
}
