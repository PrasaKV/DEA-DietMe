/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.utill;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbUtill {

    private static final String URL = "jdbc:mysql://localhost:3306/mealTest";
    private static final String USER = "root";
    private static final String PASS = "";

    static {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        // Establish a connection to the database
        return DriverManager.getConnection(URL, USER, PASS);
    }

    public static void closeResources(Connection con, PreparedStatement pst) {
        // Close the database resources
        try {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            System.out.println("Error in closing resources: " + ex.getMessage());
        }
    }
}
