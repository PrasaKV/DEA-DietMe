
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

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(int mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
    
    
}
