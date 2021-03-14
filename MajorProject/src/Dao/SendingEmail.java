package Dao;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendingEmail {
	private String userEmail;
	private String myHash;
	public SendingEmail(String userEmail, String myHash) {
		super();
		this.userEmail = userEmail;
		this.myHash = myHash;
	}

	public void sendEmail() {
		String email="snakeandladder6@gmail.com";
		String password="@Project"; //Our email and password
		Properties properties=new Properties();
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.socketFactory.port", "587");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		
	
		
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
			message.setSubject("Email Verification Link");
			message.setText("Click this link to confirm your email address and complete setup for your account."
					+ "\n\nVerification Link: " + "http://localhost:8080/MajorProject/activate-account?key1=" + userEmail + "&key2=" + myHash);
	
			Transport.send(message);
			
			System.out.println("Successfully sent Verification Link");
			
		} 
		
		
		catch (Exception e) {
			System.out.println("SendingEmail "+e);
		}
		
	}
}
