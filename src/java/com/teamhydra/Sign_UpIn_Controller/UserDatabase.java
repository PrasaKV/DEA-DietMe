///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.teamhydra.Sign_UpIn_Controller;
//
//import java.sql.*;
//
///**
// *
// * @author adipasith
// */
//public class UserDatabase {
//    Connection con;
//    
//    public UserDatabase(Connection con) {
//        this.con = con;
//    }
//    
//    // for regiester user
//    public boolean saveUser(User user) {
//        boolean set = false;
//        
//        try {
//            // Insert register data to database
//            // Change the table name
//            String query = "insert into user(fullname,email,password,confirmpassword)values(?,?,?,?)";
//            
//            PreparedStatement pt = this.con.prepareStatement(query);
//           pt.setString(1, user.getfullname());
//           pt.setString(2, user.getemail());
//           pt.setString(3, user.getpassword());
//           pt.setString(4, user.getconfirmpassword());
//           
//           pt.executeUpdate();
//           set = true;
//        } catch(Exception e){
//            e.printStackTrace();
//        }
//        return set;
//    }
//    
//    //user login
//    public User login(String email, String password){
//        User usr=null;
//        try{
//            // Change the table name
//            String query ="select * from user where email=? and password=?";
//            PreparedStatement pst = this.con.prepareStatement(query);
//            pst.setString(1, email);
//            pst.setString(2, password);
//            
//            ResultSet rs = pst.executeQuery();
//            
//            if(rs.next()){
//                usr = new User();
//                usr.setId(rs.getInt("id"));
//                usr.setfullname(rs.getString("fullname"));
//                usr.setemail(rs.getString("email"));
//                usr.setpassword(rs.getString("password"));
//                usr.setconfirmpassword(rs.getString("confirmpassword"));
//                
//            }
//            
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        return usr;
//    }
//}
