 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Sign_UpIn_Controller;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author adipasith
 */
public class ConnectionPro {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/User","root","12345678");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
