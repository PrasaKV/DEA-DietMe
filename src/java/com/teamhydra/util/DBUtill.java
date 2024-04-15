/**
 *
 * @author Prasad
 */

package com.teamhydra.util;

/* Imports */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/* Exception Imports */
import java.lang.ClassNotFoundException;
import java.sql.SQLException;



public class DBUtill {
    
            /* oyalage Mysql Database ekata connect weddi  'jdbc:mysql://localhost:3306/users'   me URL eke  '//localhost:3306/users' eke indan 
    wenas karanna thiye nm witharak wenas karanna, 'users' kiyanne Mysql Database eke name eka*/
            private static final String url = "jdbc:mysql://localhost:3306/users";
            private static final String username = "root";
            private static final String password = "";
            
            public static void Connection(){
                
                Connection connection = null;
                
                try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection(url,username,password);
                }
                
                catch(SQLException | ClassNotFoundException e)
                {
                    System.out.println(e.getMessage());
                }
                
                try
                {
                    Statement stm =  connection.createStatement();
                }
                catch(SQLException e)
                {
                    System.out.println(e.getMessage());
                }
            }
    
}
