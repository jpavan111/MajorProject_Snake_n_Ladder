package Dao;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

public class ForgotMailService {
	private String userEmail;
	private String randomOtp;
	
	public ForgotMailService(String userEmail, String randomOtp) {
		super();
		this.userEmail = userEmail;
		this.randomOtp = randomOtp;
	}

	public String sendForgotEmail() {
		String email="snakeandladder6@gmail.com";
		String password="@Project"; //Our email and password
		Properties properties = new Properties();
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.debug", "true");
		properties.put("mail.store.protocal", "pop3");
		properties.put("mail.transport.protocal", "smtp");
		properties.setProperty("mail.smtp.starttls.enable", "true");
		properties.setProperty("mail.smtp.host", "smtp.gmail.com");
		properties.setProperty("mail.smtp.port", "465");
		properties.setProperty("mail.smtp.socketFactory.port", "465");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.setProperty("mail.smtp.socketFactory.fallback", "false");
		
	
		
		  //get session to authenticate the host email address and password
	    Session session = Session.getDefaultInstance(properties, new Authenticator() {
	        @Override
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(email, password);
	        }
	    });
		
	
		try {
			
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(email));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
			message.setSubject("OTP for Password Change. Please don't reply to this mail.");
			message.setText("Your OTP is "+ randomOtp);
	
			Transport.send(message);
			
			System.out.println("OTP Sent Successfully!");
			return randomOtp;
		} 
		
		
		catch (Exception e) {
			System.out.println("Sending mail error: "+ e.getMessage());
			return randomOtp;
		}
		
	}
}
