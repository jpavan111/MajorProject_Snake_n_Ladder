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
			
			
			message.setContent("<!DOCTYPE html>\r\n"
					+ "<html>\r\n"
					+ "\r\n"
					+ "<head>\r\n"
					+ "    <title></title>\r\n"
					+ "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n"
					+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
					+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n"
					+ "    <style type=\"text/css\">\r\n"
					+ "        @media screen {\r\n"
					+ "            @font-face {\r\n"
					+ "                font-family: 'Lato';\r\n"
					+ "                font-style: normal;\r\n"
					+ "                font-weight: 400;\r\n"
					+ "                src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');\r\n"
					+ "            }\r\n"
					+ "\r\n"
					+ "            @font-face {\r\n"
					+ "                font-family: 'Lato';\r\n"
					+ "                font-style: normal;\r\n"
					+ "                font-weight: 700;\r\n"
					+ "                src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');\r\n"
					+ "            }\r\n"
					+ "\r\n"
					+ "            @font-face {\r\n"
					+ "                font-family: 'Lato';\r\n"
					+ "                font-style: italic;\r\n"
					+ "                font-weight: 400;\r\n"
					+ "                src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');\r\n"
					+ "            }\r\n"
					+ "\r\n"
					+ "            @font-face {\r\n"
					+ "                font-family: 'Lato';\r\n"
					+ "                font-style: italic;\r\n"
					+ "                font-weight: 700;\r\n"
					+ "                src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');\r\n"
					+ "            }\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        /* CLIENT-SPECIFIC STYLES */\r\n"
					+ "        body,\r\n"
					+ "        table,\r\n"
					+ "        td,\r\n"
					+ "        a {\r\n"
					+ "            -webkit-text-size-adjust: 100%;\r\n"
					+ "            -ms-text-size-adjust: 100%;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        table,\r\n"
					+ "        td {\r\n"
					+ "            mso-table-lspace: 0pt;\r\n"
					+ "            mso-table-rspace: 0pt;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        img {\r\n"
					+ "            -ms-interpolation-mode: bicubic;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        /* RESET STYLES */\r\n"
					+ "        img {\r\n"
					+ "            border: 0;\r\n"
					+ "            height: auto;\r\n"
					+ "            line-height: 100%;\r\n"
					+ "            outline: none;\r\n"
					+ "            text-decoration: none;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        table {\r\n"
					+ "            border-collapse: collapse !important;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        body {\r\n"
					+ "            height: 100% !important;\r\n"
					+ "            margin: 0 !important;\r\n"
					+ "            padding: 0 !important;\r\n"
					+ "            width: 100% !important;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        /* iOS BLUE LINKS */\r\n"
					+ "        a[x-apple-data-detectors] {\r\n"
					+ "            color: inherit !important;\r\n"
					+ "            text-decoration: none !important;\r\n"
					+ "            font-size: inherit !important;\r\n"
					+ "            font-family: inherit !important;\r\n"
					+ "            font-weight: inherit !important;\r\n"
					+ "            line-height: inherit !important;\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        /* MOBILE STYLES */\r\n"
					+ "        @media screen and (max-width:600px) {\r\n"
					+ "            h1 {\r\n"
					+ "                font-size: 32px !important;\r\n"
					+ "                line-height: 32px !important;\r\n"
					+ "            }\r\n"
					+ "        }\r\n"
					+ "\r\n"
					+ "        /* ANDROID CENTER FIX */\r\n"
					+ "        div[style*=\"margin: 16px 0;\"] {\r\n"
					+ "            margin: 0 !important;\r\n"
					+ "        }\r\n"
					+ "    </style>\r\n"
					+ "</head>\r\n"
					+ "\r\n"
					+ "<body style=\"background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;\">\r\n"
					+ "    <!-- HIDDEN PREHEADER TEXT -->\r\n"
					+ "    <div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: 'Lato', Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\"> We're thrilled to have you here! Get ready to dive into your new account. </div>\r\n"
					+ "    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n"
					+ "        <!-- LOGO -->\r\n"
					+ "        <tr>\r\n"
					+ "            <td bgcolor=\"#FFA73B\" align=\"center\">\r\n"
					+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\"> </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                </table>\r\n"
					+ "            </td>\r\n"
					+ "        </tr>\r\n"
					+ "        <tr>\r\n"
					+ "            <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n"
					+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;\">\r\n"
					+ "                            <h1 style=\"font-size: 48px; font-weight: 400; margin: 2;\">Welcome!</h1> <img src=\" https://img.icons8.com/clouds/100/000000/handshake.png\" width=\"125\" height=\"120\" style=\"display: block; border: 0px;\" />\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                </table>\r\n"
					+ "            </td>\r\n"
					+ "        </tr>\r\n"
					+ "        <tr>\r\n"
					+ "            <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n"
					+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <p style=\"margin: 0;\">We're excited to have you get started with the game. First, you need to confirm your account. Just press the button below & then enjoy the game.</p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\">\r\n"
					+ "                            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
					+ "                                <tr>\r\n"
					+ "                                    <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n"
					+ "                                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
					+ "                                            <tr>\r\n"
					+ "                                                <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=http://localhost:8080/MajorProject/activate-account?key1="+userEmail+"&key2="+myHash+" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\">Confirm Account</a></td>\r\n"
					+ "                                            </tr>\r\n"
					+ "                                        </table>\r\n"
					+ "                                    </td>\r\n"
					+ "                                </tr>\r\n"
					+ "                            </table>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr> <!-- COPY -->\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 0px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <p style=\"margin: 0;\">If that doesn't work, copy and paste the following link in your browser:</p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr> <!-- COPY -->\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <p style=\"margin: 0;\"><a href=http://localhost:8080/MajorProject/activate-account?key1="+userEmail+"&key2="+myHash+">http://localhost:8080/MajorProject/activate-account?key1="+userEmail+"&key2="+myHash+"</a></p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <p style=\"margin: 0;\">If you have any questions, just reply to this mail, we're always happy to help out.</p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <p style=\"margin: 0;\">Cheers,<br>Snake & Ladder Team,</p>\r\n"
					+ "                            <p style=\"margin: 0;\">CDAC Mumbai</p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                </table>\r\n"
					+ "            </td>\r\n"
					+ "        </tr>\r\n"
					+ "        <tr>\r\n"
					+ "            <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n"
					+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px; margin-bottom: 2%;\">\r\n"
					+ "                    <tr>\r\n"
					+ "                        <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n"
					+ "                            <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Need more help?</h2>\r\n"
					+ "                            <p style=\"margin: 0;\"><a href=\"http://localhost:8080/MajorProject/ContactUs.jsp\" style=\"color: #FFA73B;\">We&rsquo;re here to help you out</a></p>\r\n"
					+ "                        </td>\r\n"
					+ "                    </tr>\r\n"
					+ "                </table>\r\n"
					+ "            </td>\r\n"
					+ "        </tr>\r\n"
					+ "    </table>\r\n"
					+ "</body>\r\n"
					+ "\r\n"
					+ "</html>", "text/html");
	
			Transport.send(message);
			
			System.out.println("Successfully sent Verification Link");
			
		} 
		
		
		catch (Exception e) {
			System.out.println("SendingEmail "+e);
		}
		
	}
}



