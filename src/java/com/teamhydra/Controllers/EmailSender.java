/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Controllers;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author adipasith
 */
public class EmailSender {
        public static void sendVerificationEmail(String email, String token) {
        // Setup mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
                Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("jakalinfrandoo@gmail.com", "Arachchige");
            }
        });
                        try {
            // Create a message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("jakalinfrandoo@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Verify your Account");

            // Set the message content
            String content = "Please click the following link to verify your email address: "
                    + "http://www.example.com/verify?token=" + token;
            message.setText(content);
                        // Send the message
            Transport.send(message);
            System.out.println("Verify Email sent successfully!");
        } catch (MessagingException e) {
            System.out.println("Error sending email: " + e.getMessage());
        }
    }
    
}
