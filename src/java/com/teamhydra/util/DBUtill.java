package com.teamhydra.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtill {

    /* oyalage Mysql Database ekata connect weddi  'jdbc:mysql://localhost:3306/users'   me URL eke  '//localhost:3306/users' eke indan 
    wenas karanna thiye nm witharak wenas karanna, 'users' kiyanne Mysql Database eke name eka*/
    private static final String url = "jdbc:mysql://localhost:3306/dietme";
    private static final String username = "root";
    private static final String password = "";

//                private static final String url = "jdbc:mysql://auth-db1303.hstgr.io:3306/u845558628_DietMe";
//                private static final String username = "u845558628_teamhydra";
//                private static final String password = "oB3WW!8~";
    public static PreparedStatement setStatment(String sql) throws SQLException {

        Connection connection = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);

            if (connection.isValid(0)) {

                stmt = connection.prepareStatement(sql);
                System.out.println("Connected To The Database");
            }
            if (!(connection.isValid(0))) {
                System.out.println("Could Not Connect To The Database");
            }

        } catch (ClassNotFoundException e) {

            throw new SQLException("JDBC Driver not found", e);

        } catch (SQLException e) {

            throw new SQLException("Connection failed: " + e.getMessage(), e);

        }
        return stmt;
    }

public static Connection getConnection() throws SQLException {
    Connection connection = DriverManager.getConnection(url, username, password);
    return connection;
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
