package com.dietme.admin;

import com.dietme.admin.Admin;
import com.dietme.utill.DbUtill;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {

    // SQL queries for admin table
    private static final String INSERT_QUERY_ADMIN
            = "INSERT INTO admins (adminName, email, mobileNumber, password, isActive) VALUES (?, ?, ?, ?, ?)";
    private static final String UPDATE_QUERY_ADMIN
            = "UPDATE admins SET adminName = ?, email = ?, mobileNumber = ?, password = ?, isActive = ? WHERE adminId = ?";
    private static final String LOGIN_QUERY = "SELECT * FROM admins WHERE email = ? AND password = ?";
    private static final String SELECT_QUERY_ADMIN_BY_ID = "SELECT * FROM admins WHERE adminId = ?";
    private static final String SELECT_ALL_QUERY_ADMIN = "SELECT * FROM admins";
    private static final String DELETE_QUERY_ADMIN = "DELETE FROM admins WHERE adminId = ?";

    // Other constants and methods for default meals remain unchanged...
    // Method to add an admin
    public int addAdmin(Admin admin) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(INSERT_QUERY_ADMIN, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, admin.getAdminName());
            statement.setString(2, admin.getEmail());
            statement.setInt(3, admin.getMobileNumber());
            statement.setString(4, admin.getPassword());
            statement.setBoolean(5, admin.isIsActive());
            statement.executeUpdate();

            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    // Method to update an admin
    public boolean updateAdmin(Admin admin) {
        boolean rowUpdated = false;
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_QUERY_ADMIN)) {
            statement.setString(1, admin.getAdminName());
            statement.setString(2, admin.getEmail());
            statement.setInt(3, admin.getMobileNumber());
            statement.setString(4, admin.getPassword());
            statement.setBoolean(5, admin.isIsActive());
            statement.setInt(6, admin.getAdminId());
            rowUpdated = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    // Method to find an admin by ID
    public Admin loginUser(String email, String password) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(LOGIN_QUERY)) {
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                boolean isActive = resultSet.getBoolean("isactive");
                if (isActive) {
                    // Admin is active, proceed with login
                    return mapResultSetToAdminDetails(resultSet);
                } else {
                    // Admin is not active, handle accordingly (e.g., display error message)
                    System.out.println("Admin is not active. Please contact support.");
                    return null; // or throw an exception
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to find an admin by ID
    public Admin findAdminById(int adminId) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_QUERY_ADMIN_BY_ID)) {
            statement.setInt(1, adminId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToAdminDetails(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public boolean deleteAdmin(int adminId) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_QUERY_ADMIN)) {
            statement.setInt(1, adminId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Admin> findAll() {
        List<Admin> adminsList = new ArrayList<>();
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_ALL_QUERY_ADMIN);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                adminsList.add(mapResultSetToAdminDetails(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminsList;
    }

    private Admin mapResultSetToAdminDetails(ResultSet resultSet) throws SQLException {
        int adminId = resultSet.getInt("adminId");
        String adminName = resultSet.getString("adminName");
        String email = resultSet.getString("email");
        int mobileNumber = resultSet.getInt("mobileNumber");
        String password = resultSet.getString("password");
        boolean isActive = resultSet.getBoolean("isActive");

        return new Admin(adminId, adminName, email, mobileNumber, password, isActive);
    }

}
