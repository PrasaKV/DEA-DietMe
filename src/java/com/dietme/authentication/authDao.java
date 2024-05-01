/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.authentication;

import com.dietme.admin.Admin;
import com.teamhydra.Objects.UserInfo;
import com.teamhydra.util.DBUtill;
import java.sql.*;

public class authDao {

    public boolean registerUser(UserInfo user) throws SQLException {
        String query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
        PreparedStatement statement = DBUtill.setStatment(query);
        statement.setString(1, user.getName());
        statement.setString(2, user.getEmail());
        statement.setString(3, user.getPassword()); 
        return statement.executeUpdate() > 0;
    }

    public UserInfo loginUser(String email, String password) throws SQLException {
        String query = "SELECT * FROM users WHERE email = ? AND password = ?"; 
        PreparedStatement statement = DBUtill.setStatment(query);
        statement.setString(1, email);
        statement.setString(2, password);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            return new UserInfo(
                    resultSet.getInt("userId"),
                    resultSet.getString("name"),
                    resultSet.getString("email"),
                    resultSet.getString("password"),
                    resultSet.getInt("phone"),
                    resultSet.getString("address"),
                    resultSet.getString("profileImage")
            );
        }
        return null;
    }

    public Admin loginAdmin(String email, String password) throws SQLException {
        String query = "SELECT * FROM admins WHERE email = ? AND password = ?"; 
        PreparedStatement statement = DBUtill.setStatment(query);
        statement.setString(1, email);
        statement.setString(2, password);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            return new Admin(
                    resultSet.getInt("adminId"),
                    resultSet.getString("adminName"),
                    resultSet.getString("email"),
                    resultSet.getInt("mobileNumber"),
                    resultSet.getString("password"),
                    resultSet.getBoolean("isActive")
            );
        }
        return null;
    }
}
