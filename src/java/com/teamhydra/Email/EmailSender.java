package com.teamhydra.Email;

import java.util.Properties;
import java.util.Random;
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
        public static String sendVerificationEmail(String email) {
        // Setup mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.titan.email");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.enable", "false");
        props.put("mail.smtp.starttls.enable", "true");
        
            Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("dietme@synnext.lk", "mO,vp}Tur:)xp|x");
            }
        });
            // Create Token
            Random random = new Random();
            int randomInt = random.nextInt(1000000);

            // Format the integer as a 6-digit string
            String token = String.format("%06d", randomInt);
            
           try {
            // Create a message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("dietme@synnext.lk"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Verify your Account");
            
            // Set the message content
            String content = "Please Enter The Following Code To Verify Your Account : "
                    +  token;
            message.setText(content);
                        // Send the message
            Transport.send(message);
            System.out.println("Verify Email sent successfully!");
        } catch (MessagingException e) {
            System.out.println("Error sending email: " + e.getMessage());
        }
           
           return token;
           
    }
    
}
