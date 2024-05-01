package com.teamhydra.Userverify;

import com.teamhydra.Objects.UserInfo;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendEmail {

    // ... (getRandom method)

    public boolean sendEmail(UserInfo user) {
        boolean success = false;

        String toEmail = user.getEmail();

        String fromEmail = "";
        String password = "";

        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.your_email_provider.com"); // Replace with correct host
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");

            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("Account Verification - [Your Application Name]");
            message.setText("Hello " + user.getName() + ",\n\n" +
                    "Please verify your account using this code: " + user.getCode() + "\n\n" +
                    "Thank you,\n" +
                    "[Your Application Name] Team");

            Transport.send(message);
            success = true;

        } catch (MessagingException e) {
            // Handle email sending errors
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, "Error sending email", e);
            // Consider providing feedback to the user or taking alternative actions
        }

        return success;
    }
}

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
