import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

void sendMail(String user, String pass, String recipientMail) async {
  String username = user; //senderEmail
  String password = pass; //senderPassword

  final smtpServer = gmail(username, password);
  // Use the SmtpServer class to configure an SMTP server:
  // final smtpServer = SmtpServer('smtp.domain.com');
  // See the named arguments of SmtpServer for further configuration
  // options.

  // Create our message.
  final message = Message()
    ..from = Address(
      username,
    )
    ..recipients.add(recipientMail)
  // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
  // ..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = 'Test again'
    ..text = 'This is the plain text.\nThis is line 2 of the text part.'
    ..html = "<h1>Testiiiiiiiiing</h1>\n<p>Hey! Here's some HTML content</p>";

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }

  var connection = PersistentConnection(smtpServer);

  await connection.send(message);

  await connection.close();
}