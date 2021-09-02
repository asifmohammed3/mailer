import 'package:bulkmailer/pages/homePage.dart';
import 'package:bulkmailer/widgets/customButton.dart';
import 'package:bulkmailer/widgets/textInputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bulkmailer/mailer.dart';

String senderEmail = new SettingPages() as String;

class SettingPages extends StatelessWidget {
  TextEditingController emailValue = TextEditingController();
  TextEditingController passwordValue = TextEditingController();
  String? senderEmail;
  String? senderPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 41, 39, 39),
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 22,
            )),
        backgroundColor: Color.fromARGB(150, 55, 79, 128),
      ),
      body: Center(
          child: ListView(
            children: [
              Center(
                child: Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        "Login to your account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Container(
                child: TextInputField(
                  controller: emailValue,
                  disabledBorderColor: Colors.green,
                  disabledBorderWidth: 1,
                  enabledBorderColor: Colors.grey,
                  enabledBorderWidth: 0.5,
                  focusedBorderColor: Colors.white,
                  focusedBorderWidth: 1.5,
                  labelText: "Email",
                  labelTextColor: Colors.grey,
                  labelTextSize: 18,
                  keyBoardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextInputField(
                  controller: passwordValue,
                  disabledBorderColor: Colors.green,
                  disabledBorderWidth: 1,
                  enabledBorderColor: Colors.grey,
                  enabledBorderWidth: 0.5,
                  focusedBorderColor: Colors.white,
                  focusedBorderWidth: 1.5,
                  labelText: "Password",
                  labelTextColor: Colors.grey,
                  labelTextSize: 18,
                  keyBoardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: CustomButton(
                  onPressed: () {
                    senderEmail = emailValue.text;
                    senderPassword = passwordValue.text;

                    //for routing to homepage on pressing login
                    if (senderEmail!.isNotEmpty && senderPassword!.isNotEmpty) {
                      sendMail(
                          senderEmail!, senderPassword!, 'mohdasifparambil@gmail.com');

                      final snackBar = SnackBar(
                        content: const Text('Yay! Successfully logged in'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Hey! Complete your credentials'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  buttonColor: Colors.blue,
                  buttonTextColor: Colors.white,
                  buttonText: "Login",
                  fontSize: 20,
                  padding: EdgeInsets.all(0),
                ),
              )
            ],
          )),
    );
  }
}