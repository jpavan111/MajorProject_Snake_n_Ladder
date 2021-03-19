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


















//
//package Dao;
//
//import java.util.Properties;
//
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//public class SendingEmail {
//	private String userEmail;
//	private String myHash;
//	public SendingEmail(String userEmail, String myHash) {
//		super();
//		this.userEmail = userEmail;
//		this.myHash = myHash;
//	}
//
//	public void sendEmail() {
//		String email="snakeandladder6@gmail.com";
//		String password="@Project"; //Our email and password
//		Properties properties=new Properties();
//		
//		properties.put("mail.smtp.auth", "true");
//		properties.put("mail.smtp.starttls.enable", "true");
//		properties.put("mail.smtp.host", "smtp.gmail.com");
//		properties.put("mail.smtp.port", "587");
//		properties.put("mail.smtp.socketFactory.port", "587");
//		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		
//	
//		
//		  //get session to authenticate the host email address and password
//	    Session session = Session.getDefaultInstance(properties, new Authenticator() {
//	        @Override
//	        protected PasswordAuthentication getPasswordAuthentication() {
//	            return new PasswordAuthentication(email, password);
//	        }
//	    });
//		
//	
//		try {
//			
//			MimeMessage message = new MimeMessage(session);
//			message.setFrom(new InternetAddress(email));
//			message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
//			message.setSubject("Email Verification Link");
//			
//			
//			message.setContent("<!DOCTYPE html>\r\n"
//					+ "<html >\r\n"
//					+ "<head>\r\n"
//					+ "  <meta charset=\"UTF-8\">\r\n"
//					+ "  <title> Forgot password?</title>\r\n"
//					+ "  \r\n"
//					+ "  \r\n"
//					+ "  \r\n"
//					+ "  \r\n"
//					+ "  \r\n"
//					+ "</head>\r\n"
//					+ "\r\n"
//					+ "<body>\r\n"
//					+ "  <head>\r\n"
//					+ "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n"
//					+ "  <!--[if !mso]><!-->\r\n"
//					+ "  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n"
//					+ "  <!--<![endif]-->\r\n"
//					+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
//					+ "  <title></title>\r\n"
//					+ "  <!--[if !mso]><!-->\r\n"
//					+ "  <style type=\"text/css\">\r\n"
//					+ "    @font-face {\r\n"
//					+ "              font-family: 'flama-condensed';\r\n"
//					+ "              font-weight: 100;\r\n"
//					+ "              src: url('http://assets.vervewine.com/fonts/FlamaCond-Medium.eot');\r\n"
//					+ "              src: url('http://assets.vervewine.com/fonts/FlamaCond-Medium.eot?#iefix') format('embedded-opentype'),\r\n"
//					+ "                    url('http://assets.vervewine.com/fonts/FlamaCond-Medium.woff') format('woff'),\r\n"
//					+ "                    url('http://assets.vervewine.com/fonts/FlamaCond-Medium.ttf') format('truetype');\r\n"
//					+ "          }\r\n"
//					+ "          @font-face {\r\n"
//					+ "              font-family: 'Muli';\r\n"
//					+ "              font-weight: 100;\r\n"
//					+ "              src: url('http://assets.vervewine.com/fonts/muli-regular.eot');\r\n"
//					+ "              src: url('http://assets.vervewine.com/fonts/muli-regular.eot?#iefix') format('embedded-opentype'),\r\n"
//					+ "                    url('http://assets.vervewine.com/fonts/muli-regular.woff2') format('woff2'),\r\n"
//					+ "                    url('http://assets.vervewine.com/fonts/muli-regular.woff') format('woff'),\r\n"
//					+ "                    url('http://assets.vervewine.com/fonts/muli-regular.ttf') format('truetype');\r\n"
//					+ "            }\r\n"
//					+ "          .address-description a {color: #000000 ; text-decoration: none;}\r\n"
//					+ "          @media (max-device-width: 480px) {\r\n"
//					+ "            .vervelogoplaceholder {\r\n"
//					+ "              height:83px ;\r\n"
//					+ "            }\r\n"
//					+ "          }\r\n"
//					+ "  </style>\r\n"
//					+ "  <!--<![endif]-->\r\n"
//					+ "  <!--[if (gte mso 9)|(IE)]>\r\n"
//					+ "    <style type=\"text/css\">\r\n"
//					+ "        .address-description a {color: #000000 ; text-decoration: none;}\r\n"
//					+ "        table {border-collapse: collapse ;}\r\n"
//					+ "    </style>\r\n"
//					+ "    <![endif]-->\r\n"
//					+ "</head>\r\n"
//					+ "\r\n"
//					+ "<body bgcolor=\"#e1e5e8\" style=\"margin-top:0 ;margin-bottom:0 ;margin-right:0 ;margin-left:0 ;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-color:#e1e5e8;\">\r\n"
//					+ "  <!--[if gte mso 9]>\r\n"
//					+ "<center>\r\n"
//					+ "<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\"><tr><td valign=\"top\">\r\n"
//					+ "<![endif]-->\r\n"
//					+ "  <center style=\"width:100%;table-layout:fixed;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;background-color:#e1e5e8;\">\r\n"
//					+ "    <div style=\"max-width:600px;margin-top:0;margin-bottom:0;margin-right:auto;margin-left:auto;\">\r\n"
//					+ "      <table align=\"center\" cellpadding=\"0\" style=\"border-spacing:0;font-family:'Muli',Arial,sans-serif;color:#333333;Margin:0 auto;width:100%;max-width:600px;\">\r\n"
//					+ "        <tbody>\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td align=\"center\" class=\"vervelogoplaceholder\" height=\"143\" style=\"padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;height:143px;vertical-align:middle;\" valign=\"middle\"><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%22160%22%2C%22height%22%3A34%2C%22alt_text%22%3A%22Verve%20Wine%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/79d8f4f889362f0c7effb2c26e08814bb12f5eb31c053021ada3463c7b35de6fb261440fc89fa804edbd11242076a81c8f0a9daa443273da5cb09c1a4739499f.png%22%2C%22link%22%3A%22%23%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\"><a href=\"#\" target=\"_blank\"><img alt=\"Verve Wine\" height=\"34\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/79d8f4f889362f0c7effb2c26e08814bb12f5eb31c053021ada3463c7b35de6fb261440fc89fa804edbd11242076a81c8f0a9daa443273da5cb09c1a4739499f.png\" style=\"border-width: 0px; width: 160px; height: 34px;\" width=\"160\"></a></span></td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- Start of Email Body-->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td class=\"one-column\" style=\"padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;background-color:#ffffff;\">\r\n"
//					+ "              <!--[if gte mso 9]>\r\n"
//					+ "                    <center>\r\n"
//					+ "                    <table width=\"80%\" cellpadding=\"20\" cellspacing=\"30\"><tr><td valign=\"top\">\r\n"
//					+ "                    <![endif]-->\r\n"
//					+ "              <table style=\"border-spacing:0;\" width=\"100%\">\r\n"
//					+ "                <tbody>\r\n"
//					+ "                  <tr>\r\n"
//					+ "                    <td align=\"center\" class=\"inner\" style=\"padding-top:15px;padding-bottom:15px;padding-right:30px;padding-left:30px;\" valign=\"middle\"><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%22255%22%2C%22height%22%3A93%2C%22alt_text%22%3A%22Forgot%20Password%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/35c763626fdef42b2197c1ef7f6a199115df7ff779f7c2d839bd5c6a8c2a6375e92a28a01737e4d72f42defcac337682878bf6b71a5403d2ff9dd39d431201db.png%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\"><img alt=\"Forgot Password\" class=\"banner\" height=\"93\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/35c763626fdef42b2197c1ef7f6a199115df7ff779f7c2d839bd5c6a8c2a6375e92a28a01737e4d72f42defcac337682878bf6b71a5403d2ff9dd39d431201db.png\" style=\"border-width: 0px; margin-top: 30px; width: 255px; height: 93px;\" width=\"255\"></span></td>\r\n"
//					+ "                  </tr>\r\n"
//					+ "                  <tr>\r\n"
//					+ "                    <td class=\"inner contents center\" style=\"padding-top:15px;padding-bottom:15px;padding-right:30px;padding-left:30px;text-align:left;\">\r\n"
//					+ "                      <center>\r\n"
//					+ "                        <p class=\"h1 center\" style=\"Margin:0;text-align:center;font-family:'flama-condensed','Arial Narrow',Arial;font-weight:100;font-size:30px;Margin-bottom:26px;\">Forgot your password?</p>\r\n"
//					+ "                        <!--[if (gte mso 9)|(IE)]><![endif]-->\r\n"
//					+ "\r\n"
//					+ "                        <p class=\"description center\" style=\"font-family:'Muli','Arial Narrow',Arial;Margin:0;text-align:center;max-width:320px;color:#a1a8ad;line-height:24px;font-size:15px;Margin-bottom:10px;margin-left: auto; margin-right: auto;\"><span style=\"color: rgb(161, 168, 173); font-family: Muli, &quot;Arial Narrow&quot;, Arial; font-size: 15px; text-align: center; background-color: rgb(255, 255, 255);\">That's okay, it happens! Click on the button below to reset your password.</span></p>\r\n"
//					+ "                        <!--[if (gte mso 9)|(IE)]><br>&nbsp;<![endif]--><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%22260%22%2C%22height%22%3A54%2C%22alt_text%22%3A%22Reset%20your%20Password%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/c1e9ad698cfb27be42ce2421c7d56cb405ef63eaa78c1db77cd79e02742dd1f35a277fc3e0dcad676976e72f02942b7c1709d933a77eacb048c92be49b0ec6f3.png%22%2C%22link%22%3A%22%23%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\">"
//					+ "																			<a href=\'http://localhost:8080/MajorProject/activate-account?key1=\'" + userEmail + "&key2=" + myHash +"><img alt=\"Click Here to Verify\" height=\"54\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/c1e9ad698cfb27be42ce2421c7d56cb405ef63eaa78c1db77cd79e02742dd1f35a277fc3e0dcad676976e72f02942b7c1709d933a77eacb048c92be49b0ec6f3.png\" style=\"border-width: 0px; margin-top: 30px; margin-bottom: 50px; width: 260px; height: 54px;\" width=\"260\"></a></span>\r\n"
//					+ "                        <!--[if (gte mso 9)|(IE)]><br>&nbsp;<![endif]--></center>\r\n"
//					+ "                    </td>\r\n"
//					+ "                  </tr>\r\n"
//					+ "                </tbody>\r\n"
//					+ "              </table>\r\n"
//					+ "              <!--[if (gte mso 9)|(IE)]>\r\n"
//					+ "                    </td></tr></table>\r\n"
//					+ "                    </center>\r\n"
//					+ "                    <![endif]-->\r\n"
//					+ "            </td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- End of Email Body-->\r\n"
//					+ "          <!-- whitespace -->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td height=\"40\">\r\n"
//					+ "              <p style=\"line-height: 40px; padding: 0 0 0 0; margin: 0 0 0 0;\">&nbsp;</p>\r\n"
//					+ "\r\n"
//					+ "              <p>&nbsp;</p>\r\n"
//					+ "            </td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- Social Media -->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td align=\"center\" style=\"padding-bottom:0;padding-right:0;padding-left:0;padding-top:0px;\" valign=\"middle\"><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%228%22%2C%22height%22%3A18%2C%22alt_text%22%3A%22Facebook%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/0a1d076f825eb13bd17a878618a1f749835853a3a3cce49111ac7f18255f10173ecf06d2b5bd711d6207fbade2a3779328e63e26a3bfea5fe07bf7355823567d.png%22%2C%22link%22%3A%22%23%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\"><a href=\"https://www.facebook.com/vervewine/\" target=\"_blank\"><img alt=\"Facebook\" height=\"18\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/0a1d076f825eb13bd17a878618a1f749835853a3a3cce49111ac7f18255f10173ecf06d2b5bd711d6207fbade2a3779328e63e26a3bfea5fe07bf7355823567d.png\" style=\"border-width: 0px; margin-right: 21px; margin-left: 21px; width: 8px; height: 18px;\" width=\"8\"></a></span>\r\n"
//					+ "              <!--[if gte mso 9]>&nbsp;&nbsp;&nbsp;<![endif]--><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%2223%22%2C%22height%22%3A18%2C%22alt_text%22%3A%22Twitter%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/6234335b200b187dda8644356bbf58d946eefadae92852cca49fea227cf169f44902dbf1698326466ef192bf122aa943d61bc5b092d06e6a940add1368d7fb71.png%22%2C%22link%22%3A%22%23%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\"><a href=\"https://twitter.com/vervewine\" target=\"_blank\"><img alt=\"Twitter\" height=\"18\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/6234335b200b187dda8644356bbf58d946eefadae92852cca49fea227cf169f44902dbf1698326466ef192bf122aa943d61bc5b092d06e6a940add1368d7fb71.png\" style=\"border-width: 0px; margin-right: 16px; margin-left: 16px; width: 23px; height: 18px;\" width=\"23\"></a></span>\r\n"
//					+ "              <!--[if gte mso 9]>&nbsp;&nbsp;&nbsp;&nbsp;<![endif]--><span class=\"sg-image\" data-imagelibrary=\"%7B%22width%22%3A%2218%22%2C%22height%22%3A18%2C%22alt_text%22%3A%22Instagram%22%2C%22alignment%22%3A%22%22%2C%22border%22%3A0%2C%22src%22%3A%22https%3A//marketing-image-production.s3.amazonaws.com/uploads/650ae3aa9987d91a188878413209c1d8d9b15d7d78854f0c65af44cab64e6c847fd576f673ebef2b04e5a321dc4fed51160661f72724f1b8df8d20baff80c46a.png%22%2C%22link%22%3A%22%23%22%2C%22classes%22%3A%7B%22sg-image%22%3A1%7D%7D\"><a href=\"https://www.instagram.com/vervewine/\" target=\"_blank\"><img alt=\"Instagram\" height=\"18\" src=\"https://marketing-image-production.s3.amazonaws.com/uploads/650ae3aa9987d91a188878413209c1d8d9b15d7d78854f0c65af44cab64e6c847fd576f673ebef2b04e5a321dc4fed51160661f72724f1b8df8d20baff80c46a.png\" style=\"border-width: 0px; margin-right: 16px; margin-left: 16px; width: 18px; height: 18px;\" width=\"18\"></a></span></td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- whitespace -->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td height=\"25\">\r\n"
//					+ "              <p style=\"line-height: 25px; padding: 0 0 0 0; margin: 0 0 0 0;\">&nbsp;</p>\r\n"
//					+ "\r\n"
//					+ "              <p>&nbsp;</p>\r\n"
//					+ "            </td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- Footer -->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td style=\"padding-top:0;padding-bottom:0;padding-right:30px;padding-left:30px;text-align:center;Margin-right:auto;Margin-left:auto;\">\r\n"
//					+ "              <center>\r\n"
//					+ "                <p style=\"font-family:'Muli',Arial,sans-serif;Margin:0;text-align:center;Margin-right:auto;Margin-left:auto;font-size:15px;color:#a1a8ad;line-height:23px;\">Problems or questions? Call us at\r\n"
//					+ "                  <nobr><a class=\"tel\" href=\"tel:2128102899\" style=\"color:#a1a8ad;text-decoration:none;\" target=\"_blank\"><span style=\"white-space: nowrap\">212.810.2899</span></a></nobr>\r\n"
//					+ "                </p>\r\n"
//					+ "\r\n"
//					+ "                <p style=\"font-family:'Muli',Arial,sans-serif;Margin:0;text-align:center;Margin-right:auto;Margin-left:auto;font-size:15px;color:#a1a8ad;line-height:23px;\">or email <a href=\"mailto:hello@vervewine.com\" style=\"color:#a1a8ad;text-decoration:underline;\" target=\"_blank\">hello@vervewine.com</a></p>\r\n"
//					+ "\r\n"
//					+ "                <p style=\"font-family:'Muli',Arial,sans-serif;Margin:0;text-align:center;Margin-right:auto;Margin-left:auto;padding-top:10px;padding-bottom:0px;font-size:15px;color:#a1a8ad;line-height:23px;\">© Verve Wine <span style=\"white-space: nowrap\">24 ​Hubert S​t​</span>, <span style=\"white-space: nowrap\">Ne​w Yor​k,</span> <span style=\"white-space: nowrap\">N​Y 1​0013</span></p>\r\n"
//					+ "              </center>\r\n"
//					+ "            </td>\r\n"
//					+ "          </tr>\r\n"
//					+ "          <!-- whitespace -->\r\n"
//					+ "          <tr>\r\n"
//					+ "            <td height=\"40\">\r\n"
//					+ "              <p style=\"line-height: 40px; padding: 0 0 0 0; margin: 0 0 0 0;\">&nbsp;</p>\r\n"
//					+ "\r\n"
//					+ "              <p>&nbsp;</p>\r\n"
//					+ "            </td>\r\n"
//					+ "          </tr>\r\n"
//					+ "        </tbody>\r\n"
//					+ "      </table>\r\n"
//					+ "    </div>\r\n"
//					+ "  </center>\r\n"
//					+ "  <!--[if gte mso 9]>\r\n"
//					+ "</td></tr></table>\r\n"
//					+ "</center>\r\n"
//					+ "<![endif]-->\r\n"
//					+ "\r\n"
//					+ "\r\n"
//					+ "</body>\r\n"
//					+ "  \r\n"
//					+ "  \r\n"
//					+ "</body>\r\n"
//					+"</html>\r\n"
//					+"", "text/html");
//	
//			Transport.send(message);
//			
//			System.out.println("Successfully sent Verification Link");
//			
//		} 
//		
//		
//		catch (Exception e) {
//			System.out.println("SendingEmail "+e);
//		}
//		
//	}
//}



