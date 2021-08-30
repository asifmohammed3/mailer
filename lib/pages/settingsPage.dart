import 'package:bulkmailer/widgets/textInputField.dart';
import 'package:flutter/material.dart';

class SettingPages extends StatelessWidget {
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
              )
            ),
          ),
          Container(
            child: TextInputField(
              disabledBorderColor: Colors.green,
              disabledBorderWidth: 1,
              enabledBorderColor: Colors.grey,
              enabledBorderWidth: 0.5,
              focusedBorderColor: Colors.white,
              focusedBorderWidth: 1.5,
              labelText: "Email",
              labelTextColor: Colors.grey,
              labelTextSize: 18,
              helperText: "Please enter your Email",
              helperTextColor: Colors.white54,
              keyBoardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: TextInputField(
              disabledBorderColor: Colors.green,
              disabledBorderWidth: 1,
              enabledBorderColor: Colors.grey,
              enabledBorderWidth: 0.5,
              focusedBorderColor: Colors.white,
              focusedBorderWidth: 1.5,
              labelText: "Password",
              labelTextColor: Colors.grey,
              labelTextSize: 18,
              helperText: "Please enter your password",
              helperTextColor: Colors.white54,
              keyBoardType: TextInputType.visiblePassword,
            ),
          ),
        ],
      )),
    );
  }
}
