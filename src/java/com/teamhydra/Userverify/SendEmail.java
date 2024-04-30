///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.teamhydra.Userverify;
//
//import com.teamhydra.Sign_UpIn_Controller.User;
//import java.util.Properties;
//import java.util.Random;
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
///**
// *
// * @author adipasith
// */
//public class SendEmail {
//    
//    public String getRandom() {
//        Random rnd = new Random();
//        int number = rnd.nextInt(999999);
//        
//        return String.format("%06d", number);
//    }
//    
//    public boolean sendEmail(User user) {
//        boolean text = false;
//        
//        String toEmail = user.getEmail();
//        String fromEmail = "jakalinfrandoo@gmail.com";
//        String password = "Arachchige";
//        
//        try {
//            
//            Properties pr = new Properties();
//            pr.setProperty("smtp.mail.com", "mail.smtp.host");
//            pr.setProperty("587", "mail.smtp.port");
//            pr.setProperty("true", "mail.smtp.auth");
//            pr.setProperty("true", "mail.smtp.starttls.enable");
//            pr.put("mail.smtp.socketFactory.port", "587");
//            pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//            
//            
//            // get session
//            Session session = Session.getInstance(pr, new Authenticator() {
//                
//                @Override
//                protected PasswordAuthentication getPasswordAuthentication() {
//                    
//                    return new PasswordAuthentication(fromEmail,password);
//                }
//            });
//            
//            
//            Message msg = new MimeMessage(session);
//            
//            msg.setFrom(new InternetAddress(fromEmail));
//            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
//            
//            msg.setSubject("User Register Verification");
//            
//            msg.setText("Please verify your account using this code :"+ user.getCode());
//            
//            Transport.send(msg);
//            
//            text=true;
//            
//        } catch(Exception e) {
//            
//            e.printStackTrace();
//        }
//        
//        return text;
//    }
//    
//}
