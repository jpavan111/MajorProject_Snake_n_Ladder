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
			
			message.setContent("<div style=\"font-family: Helvetica,Arial,sans-serif;min-width:1000px;overflow:auto;line-height:2\">\r\n"
					+ "  <div style=\"margin:50px auto;width:70%;padding:20px 0\">\r\n"
					+ "    <div style=\"border-bottom:1px solid #eee\">\r\n"
					+ "      <h2 style=\"font-size:2em;color: #00466a;text-decoration:none;font-weight:600\">Password Reset</h2>\r\n"
					+ "    </div>\r\n"
					+ "    <p style=\"font-size:1.5em\">Hi,</p>\r\n"
					+ "    <p style=\"font-size:1.5em\">Seems like you forgot your password for Snake & Ladder. Use the following OTP to reset your password.</p>\r\n"
					+ "    <h2 style=\"font-size:1.5em; background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;\">"+randomOtp+"</h2>\r\n"
					+ "<p style=\"font-size:1.5em\">If you did not forgot your password you safely ignore this email.</p>\r\n"
					+ "    <p style=\"font-size:1.5em\" style=\"font-size:0.9em;\">Regards,<br />Snake & Ladder Team,\r\n"
					+ "<br>\r\n"
					+ "CDAC Mumbai</p>\r\n"
					+ "  </div>\r\n"
					+ "</div>", "text/html");
			
			Transport.send(message);
			
			System.out.println("OTP Sent Successfully: "+randomOtp);
			return randomOtp;
		} 
		
		
		catch (Exception e) {
			System.out.println("Sending mail error: "+ e.getMessage());
			return randomOtp;
		}
		
	}
}
